import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/video_memos_subscriptions_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 350,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 350,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(-40, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'profile'});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(currentUserReference!),
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
        final profileUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.of(context).secondaryColor,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('PROFILE_PAGE_arrow_back_ios_ICN_ON_TAP');
                logFirebaseEvent('IconButton_Navigate-To');

                context.pushNamed(
                  'home',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.leftToRight,
                      duration: Duration(milliseconds: 100),
                    ),
                  },
                );
              },
            ),
            title: Text(
              'Profile',
              style: FlutterFlowTheme.of(context).subtitle2.override(
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
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              logFirebaseEvent('PROFILE_FloatingActionButton_ibtg67vm_ON');
              logFirebaseEvent('FloatingActionButton_Bottom-Sheet');
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: Container(
                      height: 700,
                      child: VideoMemosSubscriptionsWidget(),
                    ),
                  );
                },
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
            elevation: 8,
            label: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (profileUsersRecord.subscription == '0')
                  Text(
                    'Remove Ads',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Ubuntu',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                if (profileUsersRecord.subscription != '0')
                  Text(
                    'Change Plan',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Ubuntu',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
              ],
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.asset(
                                'assets/images/bballHero@2x.png',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        profileUsersRecord.displayName!,
                                        style: FlutterFlowTheme.of(context)
                                            .title1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 0),
                                      child: Text(
                                        profileUsersRecord.email!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 12, 0, 12),
                                        child: Text(
                                          'Account Settings',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (Theme.of(context).brightness ==
                                        Brightness.light)
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'PROFILE_PAGE_isLightMode_ON_TAP');
                                          logFirebaseEvent(
                                              'isLightMode_Set-Dark-Mode-Settings');
                                          setDarkModeSetting(
                                              context, ThemeMode.dark);
                                          logFirebaseEvent(
                                              'isLightMode_Widget-Animation');
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] ==
                                              null) {
                                            return;
                                          }
                                          await (animationsMap[
                                                      'containerOnActionTriggerAnimation2']!
                                                  .curvedAnimation
                                                  .parent as AnimationController)
                                              .forward(from: 0.0);
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                                offset: Offset(0, 0),
                                              )
                                            ],
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 12, 24, 12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Switch to Dark Mode',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.95, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 8, 0),
                                                          child: Icon(
                                                            Icons.nights_stay,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryColor,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.95, 0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 4,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                          ),
                                                          child: Container(
                                                            width: 36,
                                                            height: 36,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius: 4,
                                                                  color: Color(
                                                                      0x430B0D0F),
                                                                  offset:
                                                                      Offset(
                                                                          0, 2),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                            ),
                                                          ),
                                                        ).animated([
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation1']!
                                                        ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (Theme.of(context).brightness ==
                                        Brightness.dark)
                                      InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'PROFILE_PAGE_isDarkMode_ON_TAP');
                                          logFirebaseEvent(
                                              'isDarkMode_Set-Dark-Mode-Settings');
                                          setDarkModeSetting(
                                              context, ThemeMode.light);
                                          logFirebaseEvent(
                                              'isDarkMode_Widget-Animation');
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] ==
                                              null) {
                                            return;
                                          }
                                          await (animationsMap[
                                                      'containerOnActionTriggerAnimation1']!
                                                  .curvedAnimation
                                                  .parent as AnimationController)
                                              .forward(from: 0.0);
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 1,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                offset: Offset(0, 0),
                                              )
                                            ],
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryColor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24, 12, 24, 12),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Switch to Light Mode',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                      ),
                                                ),
                                                Container(
                                                  width: 80,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.9, 0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      2, 0, 0),
                                                          child: Icon(
                                                            Icons
                                                                .wb_sunny_rounded,
                                                            color: Colors.black,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.9, 0),
                                                        child: Container(
                                                          width: 36,
                                                          height: 36,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4,
                                                                color: Color(
                                                                    0x430B0D0F),
                                                                offset: Offset(
                                                                    0, 2),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                        ).animated([
                                                          animationsMap[
                                                              'containerOnActionTriggerAnimation2']!
                                                        ]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PROFILE_PAGE_Container_38vytmxj_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_Navigate-To');

                                        context.pushNamed(
                                          'editProfile',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 100),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(8),
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(8),
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Edit Profile',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.9, 0),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PROFILE_PAGE_Container_xz843wt1_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_Navigate-To');

                                        context.pushNamed(
                                          'changePassword',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                              duration:
                                                  Duration(milliseconds: 100),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(8),
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(8),
                                          ),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Reset Password',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.9, 0),
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryColor,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: StreamBuilder<List<AppsRecord>>(
                                        stream: queryAppsRecord(
                                          queryBuilder: (appsRecord) =>
                                              appsRecord.where('name',
                                                  isEqualTo: 'etwelve papers'),
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
                                              containerAppsRecordList =
                                              snapshot.data!;
                                          final containerAppsRecord =
                                              containerAppsRecordList.isNotEmpty
                                                  ? containerAppsRecordList
                                                      .first
                                                  : null;
                                          return Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                width: 1,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PROFILE_PAGE_Text_inx8q4ls_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Text_Launch-U-R-L');
                                                      await launchURL(
                                                          containerAppsRecord!
                                                              .privacyPolicy!);
                                                    },
                                                    child: Text(
                                                      'Privacy Policy',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .persianBlue,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PROFILE_PAGE_Text_tnufozru_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Text_Launch-U-R-L');
                                                      await launchURL(
                                                          containerAppsRecord!
                                                              .terms!);
                                                    },
                                                    child: Text(
                                                      'Terms and Conditions',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .persianBlue,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 10, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'PROFILE_PAGE_Text_vpl83vuv_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Text_Launch-U-R-L');
                                                      await launchURL(
                                                          containerAppsRecord!
                                                              .disclaimer!);
                                                    },
                                                    child: Text(
                                                      'Disclaimer',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .persianBlue,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 15, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'PROFILE_PAGE_LOG_OUT_BTN_ON_TAP');
                                        logFirebaseEvent('Button_Auth');
                                        GoRouter.of(context).prepareAuthEvent();
                                        await signOut();

                                        context.goNamedAuth('login', mounted);
                                      },
                                      text: 'Log Out',
                                      options: FFButtonOptions(
                                        width: 90,
                                        height: 40,
                                        color: Colors.transparent,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        elevation: 2,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
