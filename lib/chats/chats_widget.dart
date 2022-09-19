import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatsWidget extends StatefulWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  _ChatsWidgetState createState() => _ChatsWidgetState();
}

class _ChatsWidgetState extends State<ChatsWidget> {
  ChatsRecord? createdChat;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'chats'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('CHATS_PAGE_Icon_vvonu1io_ON_TAP');
            logFirebaseEvent('Icon_Navigate-To');

            context.pushNamed(
              'profile',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                  duration: Duration(milliseconds: 100),
                ),
              },
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 24,
          ),
        ),
        title: Text(
          'All Chats',
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                logFirebaseEvent('CHATS_PAGE_Icon_8m2hz907_ON_TAP');
                logFirebaseEvent('Icon_Backend-Call');

                final chatsCreateData = {
                  ...createChatsRecordData(
                    userA: currentUserReference,
                  ),
                  'users': [currentUserReference],
                };
                var chatsRecordReference = ChatsRecord.collection.doc();
                await chatsRecordReference.set(chatsCreateData);
                createdChat = ChatsRecord.getDocumentFromData(
                    chatsCreateData, chatsRecordReference);
                logFirebaseEvent('Icon_Navigate-To');

                context.pushNamed(
                  'startChat',
                  queryParams: {
                    'chat': serializeParam(
                        createdChat!.reference, ParamType.DocumentReference),
                  }.withoutNulls,
                );

                setState(() {});
              },
              child: Icon(
                Icons.person_add_alt,
                color: FlutterFlowTheme.of(context).secondaryColor,
                size: 24,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
            child: StreamBuilder<List<ChatsRecord>>(
              stream: queryChatsRecord(
                queryBuilder: (chatsRecord) => chatsRecord
                    .where('users', arrayContains: currentUserReference)
                    .orderBy('last_message_time', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: SpinKitFadingCube(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 25,
                      ),
                    ),
                  );
                }
                List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewChatsRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewChatsRecord =
                        listViewChatsRecordList[listViewIndex];
                    return StreamBuilder<FFChatInfo>(
                      stream: FFChatManager.instance
                          .getChatInfo(chatRecord: listViewChatsRecord),
                      builder: (context, snapshot) {
                        final chatInfo =
                            snapshot.data ?? FFChatInfo(listViewChatsRecord);
                        return FFChatPreview(
                          onTap: () => context.pushNamed(
                            'chatPage',
                            queryParams: {
                              'chatUser': serializeParam(
                                  chatInfo.otherUsers.length == 1
                                      ? chatInfo.otherUsersList.first
                                      : null,
                                  ParamType.Document),
                              'chatRef': serializeParam(
                                  chatInfo.chatRecord.reference,
                                  ParamType.DocumentReference),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'chatUser': chatInfo.otherUsers.length == 1
                                  ? chatInfo.otherUsersList.first
                                  : null,
                            },
                          ),
                          lastChatText: chatInfo.chatPreviewMessage(),
                          lastChatTime: listViewChatsRecord.lastMessageTime,
                          seen: listViewChatsRecord.lastMessageSeenBy!
                              .contains(currentUserReference),
                          title: chatInfo.chatPreviewTitle(),
                          userProfilePic: chatInfo.chatPreviewPic(),
                          color: Colors.transparent,
                          unreadColor: Color(0xFF00968A),
                          titleTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          dateTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                          previewTextStyle: GoogleFonts.getFont(
                            'DM Sans',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                          ),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          borderRadius: BorderRadius.circular(0),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
