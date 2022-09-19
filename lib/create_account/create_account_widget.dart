import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountWidget extends StatefulWidget {
  const CreateAccountWidget({Key? key}) : super(key: key);

  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget> {
  TextEditingController? emailController;

  TextEditingController? nameController;

  TextEditingController? passwordController;

  late bool passwordVisibility;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CREATE_ACCOUNT_createAccount_ON_LOAD');
      logFirebaseEvent('createAccount_Alert-Dialog');
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Why and How we use this information:'),
            content: Text(
                '1. Name and Surname - We collect your name and surname for identification purpose, other users will see your name and surname when communicating with you via chats.\n\n2. Email - We collect your email for creating an accoung for you, this email will only be visible to you and etwelve.co developers for spefic uses only, other app users won\'t see this email.\n\n3. Password - We collect your Password for protecting your account, it is only visible to you. etwelve.co won\'t have access to your Password, it\'s not even visible in our database.\n\netwelve.co will only access your account only with your permission granted.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    });

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'createAccount'});
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
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
                        'assets/images/createAccount_bg@2x.png',
                      ).image,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 30, 24, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Get Started',
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
                                        'Create your account below.',
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
                                    controller: nameController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Name and Surname',
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
                                              .primaryColor,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: TextFormField(
                                    controller: emailController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'emailController',
                                      Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Email',
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
                                              .primaryColor,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: TextFormField(
                                    controller: passwordController,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      'passwordController',
                                      Duration(milliseconds: 100),
                                      () => setState(() {}),
                                    ),
                                    obscureText: !passwordVisibility,
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
                                          () => passwordVisibility =
                                              !passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                  ),
                                ),
                                if (FFAppState().giveConsent)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (FFAppState().agree2TandC)
                                          FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'CREATE_ACCOUNT_PAGE_SIGN_UP_BTN_ON_TAP');
                                              if (nameController!.text !=
                                                      null &&
                                                  nameController!.text != '') {
                                                if (emailController!.text !=
                                                        null &&
                                                    emailController!.text !=
                                                        '') {
                                                  if (passwordController!
                                                              .text !=
                                                          null &&
                                                      passwordController!
                                                              .text !=
                                                          '') {
                                                    logFirebaseEvent(
                                                        'Button_Auth');
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent();

                                                    final user =
                                                        await createAccountWithEmail(
                                                      context,
                                                      emailController!.text,
                                                      passwordController!.text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    final usersCreateData =
                                                        createUsersRecordData(
                                                      parent: false,
                                                      tutor: false,
                                                      displayName:
                                                          nameController!.text,
                                                      photoUrl:
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/finance-app-sample-kugwu4/assets/ijvuhvqbvns6/uiAvatar@2x.png',
                                                      student: true,
                                                      subscription: '0',
                                                      agreedToTandC: true,
                                                      agreedToTandCDate:
                                                          getCurrentTimestamp,
                                                    );
                                                    await UsersRecord.collection
                                                        .doc(user.uid)
                                                        .update(
                                                            usersCreateData);

                                                    logFirebaseEvent(
                                                        'Button_Navigate-To');

                                                    context.pushNamedAuth(
                                                        'Onboarding1', mounted);
                                                  } else {
                                                    logFirebaseEvent(
                                                        'Button_Alert-Dialog');
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Field Required!'),
                                                          content: Text(
                                                              'Please enter password, it\'s required.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_Alert-Dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Field Required!'),
                                                        content: Text(
                                                            'Please enter email, it\'s required.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                }
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_Alert-Dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text(
                                                          'Field Required!'),
                                                      content: Text(
                                                          'Please enter name and surname, they required.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              }
                                            },
                                            text: 'Sign Up',
                                            options: FFButtonOptions(
                                              width: 160,
                                              height: 50,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                if (FFAppState().giveConsent)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      if (FFAppState().agree2TandC)
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          borderRadius: 50,
                                          borderWidth: 2,
                                          buttonSize: 50,
                                          fillColor: Colors.transparent,
                                          icon: FaIcon(
                                            FontAwesomeIcons.google,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 25,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'CREATE_ACCOUNT_PAGE_google_ICN_ON_TAP');
                                            logFirebaseEvent('IconButton_Auth');
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            final user =
                                                await signInWithGoogle(context);
                                            if (user == null) {
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'IconButton_Navigate-To');

                                            context.pushNamedAuth(
                                                'Onboarding3', mounted);
                                          },
                                        ),
                                      if (FFAppState().agree2TandC)
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'CREATE_ACCOUNT_PAGE_Button-Login_ON_TAP');
                                            logFirebaseEvent(
                                                'Button-Login_Auth');
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            final user =
                                                await signInAnonymously(
                                                    context);
                                            if (user == null) {
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'Button-Login_Navigate-To');

                                            context.pushNamedAuth(
                                                'home', mounted);
                                          },
                                          text: 'Continue as Guest',
                                          options: FFButtonOptions(
                                            width: 230,
                                            height: 50,
                                            color: FlutterFlowTheme.of(context)
                                                .background,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Ubuntu',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textColor,
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
                                Divider(
                                  height: 30,
                                  thickness: 2,
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'CREATE_ACCOUNT_PAGE_Row_nuy63qu1_ON_TAP');
                                          logFirebaseEvent('Row_Navigate-To');

                                          context.pushNamed(
                                            'login',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .leftToRight,
                                                duration:
                                                    Duration(milliseconds: 220),
                                              ),
                                            },
                                          );
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CREATE_ACCOUNT_PAGE_Icon_ccj2ur79_ON_TAP');
                                                logFirebaseEvent(
                                                    'Icon_Navigate-To');

                                                context.pushNamed('login');
                                              },
                                              child: Icon(
                                                Icons.arrow_back_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                size: 24,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 24, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'CREATE_ACCOUNT_PAGE_Text_7stcm7if_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Text_Navigate-To');

                                                  context.pushNamed('login');
                                                },
                                                child: Text(
                                                  'Login',
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
                                            Text(
                                              'Already have an account?',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
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
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 12, 20, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 4, 2, 2),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'CREATE_ACCOUNT_PAGE_Text_j65vpwl7_ON_TAP');
                                              logFirebaseEvent(
                                                  'Text_Alert-Dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        'Why and How we use this information:'),
                                                    content: Text(
                                                        '1. Name and Surname - We collect your name and surname for identification purpose, other users will see your name and surname when communicating with you via chats.\n\n2. Email - We collect your email for creating an accoung for you, this email will only be visible to you and etwelve.co developers for spefic uses only, other app users won\'t see this email.\n\n3. Password - We collect your Password for protecting your account, it is only visible to you. etwelve.co won\'t have access to your Password, it\'s not even visible in our database.\n\netwelve.co will only access your account only with your permission granted.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: Text(
                                              'Why & How we use this information.',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        fontSize: 15,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ToggleIcon(
                                      onPressed: () async {
                                        setState(() =>
                                            FFAppState().giveConsent =
                                                !FFAppState().giveConsent);
                                      },
                                      value: FFAppState().giveConsent,
                                      onIcon: Icon(
                                        Icons.check_box,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 20,
                                      ),
                                      offIcon: Icon(
                                        Icons.check_box_outline_blank,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 20,
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'I give my consent for this information to be collected and used by etwelve papers.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Ubuntu',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ToggleIcon(
                                      onPressed: () async {
                                        setState(() =>
                                            FFAppState().agree2TandC =
                                                !FFAppState().agree2TandC);
                                      },
                                      value: FFAppState().agree2TandC,
                                      onIcon: Icon(
                                        Icons.check_box,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 20,
                                      ),
                                      offIcon: Icon(
                                        Icons.check_box_outline_blank,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 20,
                                      ),
                                    ),
                                    Text(
                                      'By clicking Sigh Up you agree to our ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 12,
                                          ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: AlignmentDirectional(-1, 0),
                                        child: StreamBuilder<List<AppsRecord>>(
                                          stream: queryAppsRecord(
                                            queryBuilder: (appsRecord) =>
                                                appsRecord.where('name',
                                                    isEqualTo:
                                                        'etwelve papers'),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 25,
                                                  height: 25,
                                                  child: SpinKitFadingCube(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                    size: 25,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<AppsRecord>
                                                textAppsRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the document does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textAppsRecord =
                                                textAppsRecordList.isNotEmpty
                                                    ? textAppsRecordList.first
                                                    : null;
                                            return InkWell(
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'CREATE_ACCOUNT_PAGE_Text_6oz6kz7i_ON_TAP');
                                                logFirebaseEvent(
                                                    'Text_Launch-U-R-L');
                                                await launchURL(textAppsRecord!
                                                    .privacyPolicy!);
                                              },
                                              child: Text(
                                                'Privacy Policy',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 12,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                              ),
                                            );
                                          },
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
