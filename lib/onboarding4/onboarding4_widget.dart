import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding4Widget extends StatefulWidget {
  const Onboarding4Widget({Key? key}) : super(key: key);

  @override
  _Onboarding4WidgetState createState() => _Onboarding4WidgetState();
}

class _Onboarding4WidgetState extends State<Onboarding4Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Onboarding4'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).primaryColor),
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back_ios,
          color: FlutterFlowTheme.of(context).primaryColor,
          size: 24,
        ),
        title: Text(
          'Notifications',
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Ubuntu',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: Image.asset(
                      'assets/images/createAccount_bg@2x.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Get Notified',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Be the first to be notified about new question papers or new apps or new features or promotions we have.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.05, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'ONBOARDING4_PAGE_NO_BTN_ON_TAP');
                                    logFirebaseEvent('Button_Backend-Call');

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      notifyUser: false,
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData);
                                    logFirebaseEvent('Button_Navigate-To');

                                    context.pushNamed('Onboarding5');
                                  },
                                  text: 'No',
                                  options: FFButtonOptions(
                                    width: 100,
                                    height: 50,
                                    color: Colors.transparent,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 2,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(-0.4, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'ONBOARDING4_PAGE_YES_BTN_ON_TAP');
                                    logFirebaseEvent('Button_Backend-Call');

                                    final usersUpdateData =
                                        createUsersRecordData(
                                      notifyUser: true,
                                    );
                                    await currentUserReference!
                                        .update(usersUpdateData);
                                    logFirebaseEvent('Button_Navigate-To');

                                    context.pushNamed('Onboarding5');
                                  },
                                  text: 'Yes',
                                  options: FFButtonOptions(
                                    width: 100,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 2,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
