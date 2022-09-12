import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/report_user_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageWidget extends StatefulWidget {
  const ChatPageWidget({
    Key? key,
    this.chatUser,
    this.chatRef,
  }) : super(key: key);

  final UsersRecord? chatUser;
  final DocumentReference? chatRef;

  @override
  _ChatPageWidgetState createState() => _ChatPageWidgetState();
}

class _ChatPageWidgetState extends State<ChatPageWidget> {
  FFChatInfo? _chatInfo;
  bool isGroupChat() {
    if (widget.chatUser == null) {
      return true;
    }
    if (widget.chatRef == null) {
      return false;
    }
    return _chatInfo?.isGroupChat ?? false;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHAT_PAGE_PAGE_chatPage_ON_PAGE_LOAD');
      logFirebaseEvent('chatPage_Backend-Call');

      final usersUpdateData = {
        'chatsUser': FieldValue.arrayUnion([currentUserReference]),
      };
      await widget.chatUser!.reference.update(usersUpdateData);
      logFirebaseEvent('chatPage_Backend-Call');

      final chatsUpdateData = {
        'users': FieldValue.arrayUnion([currentUserReference]),
      };
      await widget.chatRef!.update(chatsUpdateData);
    });

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'chatPage'});
    FFChatManager.instance
        .getChatInfo(
      otherUserRecord: widget.chatUser,
      chatReference: widget.chatRef,
    )
        .listen((info) {
      if (mounted) {
        setState(() => _chatInfo = info);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).secondaryColor),
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            logFirebaseEvent('CHAT_PAGE_PAGE_Icon_8trmcgmj_ON_TAP');
            logFirebaseEvent('Icon_Navigate-To');

            context.pushNamed(
              'chats',
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
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 24,
          ),
        ),
        title: Text(
          widget.chatUser!.displayName!,
          style: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('CHAT_PAGE_PAGE_Text_u8nr0olw_ON_TAP');
                    logFirebaseEvent('Text_Bottom-Sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            height: 500,
                            child: ReportUserWidget(
                              user: widget.chatUser!.reference,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Report User',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Ubuntu',
                          color: Color(0xFFFF0000),
                          fontSize: 10,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: StreamBuilder<FFChatInfo>(
            stream: FFChatManager.instance.getChatInfo(
              otherUserRecord: widget.chatUser,
              chatReference: widget.chatRef,
            ),
            builder: (context, snapshot) => snapshot.hasData
                ? FFChatPage(
                    chatInfo: snapshot.data!,
                    allowImages: true,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    timeDisplaySetting: TimeDisplaySetting.visibleOnTap,
                    currentUserBoxDecoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    otherUsersBoxDecoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    currentUserTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                    ),
                    otherUsersTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    inputHintTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Color(0xFF95A1AC),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    inputTextStyle: GoogleFonts.getFont(
                      'DM Sans',
                      color: Color(0xFF95A1AC),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                    emptyChatWidget: Center(
                      child: Image.asset(
                        'assets/images/undraw_Push_notifications_re_t84m.png',
                        width: MediaQuery.of(context).size.width * 0.76,
                      ),
                    ),
                  )
                : Center(
                    child: SizedBox(
                      width: 25,
                      height: 25,
                      child: SpinKitFadingCube(
                        color: FlutterFlowTheme.of(context).secondaryColor,
                        size: 25,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
