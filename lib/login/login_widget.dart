import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController? emailAddressLoginController;

  TextEditingController? passwordLoginController;

  late bool passwordLoginVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressLoginController = TextEditingController();
    passwordLoginController = TextEditingController();
    passwordLoginVisibility = false;
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'login'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
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
                        'assets/images/login_bg@2x.png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 60, 24, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Welcome back',
                                      style: FlutterFlowTheme.of(context)
                                          .title1
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Login to access your account below.',
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: TextFormField(
                                    controller: emailAddressLoginController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: TextFormField(
                                    controller: passwordLoginController,
                                    obscureText: !passwordLoginVisibility,
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => passwordLoginVisibility =
                                              !passwordLoginVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordLoginVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'LOGIN_PAGE_Text_j6v36iyy_ON_TAP');
                                          logFirebaseEvent('Text_Navigate-To');

                                          context.pushNamed('forgotPassword');
                                        },
                                        child: Text(
                                          'Recover Password',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Ubuntu',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'LOGIN_PAGE_Button-Login_ON_TAP');
                                          logFirebaseEvent('Button-Login_Auth');
                                          GoRouter.of(context)
                                              .prepareAuthEvent();

                                          final user = await signInWithEmail(
                                            context,
                                            emailAddressLoginController!.text,
                                            passwordLoginController!.text,
                                          );
                                          if (user == null) {
                                            return;
                                          }

                                          context.goNamedAuth('home', mounted);
                                        },
                                        text: 'Login',
                                        options: FFButtonOptions(
                                          width: 120,
                                          height: 50,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Ubuntu',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                          elevation: 3,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'LOGIN_PAGE_Container_fey8ncoo_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_Navigate-To');

                                        context.pushNamed('createAccount');
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        height: 44,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Don\'t have an account?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(24, 0, 4, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'LOGIN_PAGE_Text_a2mki5ij_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Text_Navigate-To');

                                                  context.pushNamed(
                                                      'createAccount');
                                                },
                                                child: Text(
                                                  'Create',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'LOGIN_PAGE_Icon_wx1udyhp_ON_TAP');
                                                logFirebaseEvent(
                                                    'Icon_Navigate-To');

                                                context
                                                    .pushNamed('createAccount');
                                              },
                                              child: Icon(
                                                Icons.arrow_forward_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'LOGIN_PAGE_Button-Login_ON_TAP');
                              logFirebaseEvent('Button-Login_Auth');
                              GoRouter.of(context).prepareAuthEvent();
                              final user = await signInAnonymously(context);
                              if (user == null) {
                                return;
                              }

                              context.goNamedAuth('home', mounted);
                            },
                            text: 'Continue as Guest',
                            options: FFButtonOptions(
                              width: 230,
                              height: 50,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Ubuntu',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              elevation: 3,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            borderRadius: 60,
                            borderWidth: 2,
                            buttonSize: 60,
                            fillColor: Colors.transparent,
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              size: 30,
                            ),
                            onPressed: () async {
                              logFirebaseEvent('LOGIN_PAGE_google_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_Auth');
                              GoRouter.of(context).prepareAuthEvent();
                              final user = await signInWithGoogle(context);
                              if (user == null) {
                                return;
                              }

                              context.goNamedAuth('home', mounted);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
