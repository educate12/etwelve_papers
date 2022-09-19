import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccountWidget extends StatefulWidget {
  const DeleteAccountWidget({Key? key}) : super(key: key);

  @override
  _DeleteAccountWidgetState createState() => _DeleteAccountWidgetState();
}

class _DeleteAccountWidgetState extends State<DeleteAccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 200,
            color: FlutterFlowTheme.of(context).secondaryColor,
            spreadRadius: 10,
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Warning!!!',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Ubuntu',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                    child: Text(
                      'Are you sure you want to delete this account, this action is permanent, you will loose your account and everything related to this account.',
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Ubuntu',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            logFirebaseEvent(
                                'DELETE_ACCOUNT_Container_tl4vguug_ON_TAP');
                            logFirebaseEvent('Container_Auth');
                            await deleteUser(context);
                            logFirebaseEvent('Container_Navigate-To');

                            context.pushNamed(
                              'login',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 200),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: 100,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0005),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Yes',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Ubuntu',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'DELETE_ACCOUNT_COMP_NO_BTN_ON_TAP');
                            logFirebaseEvent(
                                'Button_Close-Dialog,-Drawer,-Etc');
                            Navigator.pop(context);
                          },
                          text: 'No',
                          options: FFButtonOptions(
                            width: 130,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
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
      ),
    );
  }
}
