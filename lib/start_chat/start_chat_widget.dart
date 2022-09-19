import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class StartChatWidget extends StatefulWidget {
  const StartChatWidget({
    Key? key,
    this.chat,
  }) : super(key: key);

  final DocumentReference? chat;

  @override
  _StartChatWidgetState createState() => _StartChatWidgetState();
}

class _StartChatWidgetState extends State<StartChatWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'startChat'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ChatsRecord>(
      stream: ChatsRecord.getDocument(widget.chat!),
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
        final startChatChatsRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            iconTheme: IconThemeData(
                color: FlutterFlowTheme.of(context).secondaryColor),
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                logFirebaseEvent('START_CHAT_PAGE_Icon_57fjbrot_ON_TAP');
                logFirebaseEvent('Icon_Backend-Call');
                await startChatChatsRecord.reference.delete();
                logFirebaseEvent('Icon_Navigate-To');

                context.pushNamed(
                  'chats',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.topToBottom,
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
            title: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Friends to chat',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF95A1AC),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Text(
                  'Select the friends to add to chat.',
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: Image.asset(
                    'assets/images/login_bg@2x.png',
                  ).image,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: StreamBuilder<List<UsersRecord>>(
                  stream: queryUsersRecord(
                    limit: 50,
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
                    List<UsersRecord> listViewUsersRecordList = snapshot.data!
                        .where((u) => u.uid != currentUserUid)
                        .toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewUsersRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewUsersRecord =
                            listViewUsersRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'START_CHAT_PAGE_userEntry_ON_TAP');
                              if ((currentUserDocument?.chatsUser?.toList() ??
                                      [])
                                  .contains(listViewUsersRecord.reference)) {
                                logFirebaseEvent('userEntry_Alert-Dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Chat already exists!'),
                                      content: Text(
                                          'A chat with this person already exists, please search your chats, otherwise send a message to Educate 12 to solve this problem.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                logFirebaseEvent('userEntry_Backend-Call');

                                final usersUpdateData = {
                                  'chatsUser': FieldValue.arrayUnion(
                                      [listViewUsersRecord.reference]),
                                };
                                await currentUserReference!
                                    .update(usersUpdateData);
                                logFirebaseEvent('userEntry_Backend-Call');

                                final chatsUpdateData = {
                                  ...createChatsRecordData(
                                    userB: listViewUsersRecord.reference,
                                  ),
                                  'users': FieldValue.arrayUnion(
                                      [listViewUsersRecord.reference]),
                                };
                                await startChatChatsRecord.reference
                                    .update(chatsUpdateData);
                                logFirebaseEvent('userEntry_Navigate-To');

                                context.pushNamed(
                                  'chatPage',
                                  queryParams: {
                                    'chatUser': serializeParam(
                                        listViewUsersRecord,
                                        ParamType.Document),
                                    'chatRef': serializeParam(
                                        startChatChatsRecord.reference,
                                        ParamType.DocumentReference),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'chatUser': listViewUsersRecord,
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 100),
                                    ),
                                  },
                                );
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              height: 70,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 0,
                                    color: Color(0xFFDBE2E7),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2, 2, 2, 2),
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            listViewUsersRecord.photoUrl!,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 15, 5, 15),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      listViewUsersRecord
                                                          .displayName!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if ((currentUserDocument
                                                            ?.chatsUser
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        listViewUsersRecord
                                                            .reference))
                                                  Expanded(
                                                    child: AuthUserStreamWidget(
                                                      child: Text(
                                                        'Chat Exists',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                if (!(currentUserDocument
                                                            ?.chatsUser
                                                            ?.toList() ??
                                                        [])
                                                    .contains(
                                                        listViewUsersRecord
                                                            .reference))
                                                  Expanded(
                                                    child: AuthUserStreamWidget(
                                                      child: Text(
                                                        'Add Chat',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Ubuntu',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (!(currentUserDocument?.chatsUser
                                                ?.toList() ??
                                            [])
                                        .contains(
                                            listViewUsersRecord.reference))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: AuthUserStreamWidget(
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 40,
                                            borderWidth: 1,
                                            buttonSize: 30,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 12,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
