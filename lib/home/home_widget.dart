import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  TextEditingController? gradeController;

  TextEditingController? yearController;

  List<String>? subjectsValues;
  String? syllabusValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      delay: 1000,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(),
      finalState: AnimationState(),
    ),
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(),
      finalState: AnimationState(),
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(),
      finalState: AnimationState(),
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(),
      finalState: AnimationState(),
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 1100,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(),
      finalState: AnimationState(),
    ),
  };

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_home_ON_PAGE_LOAD');
      logFirebaseEvent('home_Revenue-Cat');
      final isEntitled = await revenue_cat.isEntitled('etwelve_papers_videos');
      if (isEntitled == null) {
        return;
      } else if (!isEntitled) {
        await revenue_cat.loadOfferings();
      }

      if (isEntitled) {
        logFirebaseEvent('home_Backend-Call');

        final usersUpdateData = createUsersRecordData(
          subscriptionPaid: true,
          agreedToTandC: false,
        );
        await currentUserReference!.update(usersUpdateData);
      } else {
        logFirebaseEvent('home_Backend-Call');

        final usersUpdateData = createUsersRecordData(
          subscriptionPaid: false,
          subscription: '0',
          agreedToTandC: true,
        );
        await currentUserReference!.update(usersUpdateData);
      }
    });

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'home'});
    yearController = TextEditingController(text: '2013');
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
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
        final homeUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (!homeUsersRecord.papersPermanentBlock!)
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
                        padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 10),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'HOME_PAGE_Icon_tupoar53_ON_TAP');
                                      logFirebaseEvent('Icon_Navigate-To');

                                      context.pushNamed('chats');
                                    },
                                    child: Icon(
                                      Icons.notifications,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 45,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'HOME_PAGE_Container_56q37ocv_ON_TAP');
                                      logFirebaseEvent('Container_Navigate-To');

                                      context.pushNamed('profile');
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3, 3, 3, 3),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            homeUsersRecord.photoUrl!,
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
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
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Filter',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 23,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            FlutterFlowChoiceChips(
                              initiallySelected: syllabusValue != null
                                  ? [syllabusValue!]
                                  : ['caps'],
                              options: [ChipData('caps'), ChipData('ieb')],
                              onChanged: (val) =>
                                  setState(() => syllabusValue = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF323B45),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                elevation: 4,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Ubuntu',
                                      color: Color(0xFF323B45),
                                    ),
                                iconColor: Color(0xFF323B45),
                                iconSize: 18,
                                elevation: 4,
                              ),
                              chipSpacing: 5,
                              multiselect: false,
                              initialized: syllabusValue != null,
                              alignment: WrapAlignment.start,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.05, 0.05),
                              child: FutureBuilder<List<SubjectsRecord>>(
                                future: querySubjectsRecordOnce(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: SpinKitFadingCube(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 25,
                                        ),
                                      ),
                                    );
                                  }
                                  List<SubjectsRecord>
                                      subjectsSubjectsRecordList =
                                      snapshot.data!;
                                  return FlutterFlowChoiceChips(
                                    initiallySelected: subjectsValues != null
                                        ? subjectsValues
                                        : ['Mathematics'],
                                    options: subjectsSubjectsRecordList
                                        .map((e) => e.subjectName!)
                                        .toList()
                                        .map((label) => ChipData(label))
                                        .toList(),
                                    onChanged: (val) =>
                                        setState(() => subjectsValues = val),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0xFF323B45),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 18,
                                      elevation: 4,
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: Color(0xFF323B45),
                                          ),
                                      iconColor: Color(0xFF323B45),
                                      iconSize: 18,
                                      elevation: 4,
                                    ),
                                    chipSpacing: 0,
                                    multiselect: true,
                                    initialized: subjectsValues != null,
                                    alignment: WrapAlignment.center,
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: yearController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'yearController',
                                        Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Year',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Ubuntu',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: TextFormField(
                                      controller: gradeController ??=
                                          TextEditingController(
                                        text: homeUsersRecord.grade?.toString(),
                                      ),
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'gradeController',
                                        Duration(milliseconds: 100),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Grade',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Ubuntu',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 16,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Ubuntu',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Papers',
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 23,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            StreamBuilder<List<PapersRecord>>(
                              stream: queryPapersRecord(
                                queryBuilder: (papersRecord) => papersRecord
                                    .where('grade',
                                        isEqualTo: double.parse(
                                            gradeController?.text ?? ''))
                                    .where('year',
                                        isEqualTo:
                                            int.parse(yearController!.text))
                                    .where('syllabus', isEqualTo: syllabusValue)
                                    .whereIn('subject', subjectsValues),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 25,
                                      height: 25,
                                      child: SpinKitFadingCube(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        size: 25,
                                      ),
                                    ),
                                  );
                                }
                                List<PapersRecord> columnPapersRecordList =
                                    snapshot.data!;
                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnPapersRecordList.length,
                                        (columnIndex) {
                                      final columnPapersRecord =
                                          columnPapersRecordList[columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 6),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'HOME_PAGE_Container_tuoihjvm_ON_TAP');
                                            logFirebaseEvent(
                                                'Container_Backend-Call');

                                            final papersUpdateData = {
                                              'openners': FieldValue.arrayUnion(
                                                  [currentUserReference]),
                                            };
                                            await columnPapersRecord.reference
                                                .update(papersUpdateData);
                                            logFirebaseEvent(
                                                'Container_Navigate-To');

                                            context.pushNamed(
                                              'viewer',
                                              queryParams: {
                                                'paper': serializeParam(
                                                    columnPapersRecord,
                                                    ParamType.Document),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'paper': columnPapersRecord,
                                              },
                                            );
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 40,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 20,
                                                    color: Colors.black,
                                                    offset: Offset(2, 2),
                                                    spreadRadius: 5,
                                                  )
                                                ],
                                                gradient: LinearGradient(
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor
                                                  ],
                                                  stops: [0, 0.65],
                                                  begin: AlignmentDirectional(
                                                      0.87, -1),
                                                  end: AlignmentDirectional(
                                                      -0.87, 1),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 6, 6, 6),
                                                child: InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'HOME_PAGE_Row_qgmozlle_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Row_Backend-Call');

                                                    final papersUpdateData = {
                                                      'openners': FieldValue
                                                          .arrayUnion([
                                                        currentUserReference
                                                      ]),
                                                    };
                                                    await columnPapersRecord
                                                        .reference
                                                        .update(
                                                            papersUpdateData);
                                                    logFirebaseEvent(
                                                        'Row_Navigate-To');

                                                    context.pushNamed(
                                                      'viewer',
                                                      queryParams: {
                                                        'paper': serializeParam(
                                                            columnPapersRecord,
                                                            ParamType.Document),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        'paper':
                                                            columnPapersRecord,
                                                      },
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          if (FFAppState()
                                                                  .selectedPaper ==
                                                              columnPapersRecord
                                                                  .reference)
                                                            Icon(
                                                              Icons
                                                                  .radio_button_checked_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24,
                                                            ),
                                                          if (FFAppState()
                                                                  .selectedPaper !=
                                                              columnPapersRecord
                                                                  .reference)
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .circle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 20,
                                                            ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    0, 0),
                                                        child: Text(
                                                          'Paper${columnPapersRecord.paper?.toString()}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                      if (columnPapersRecord
                                                                  .memo !=
                                                              null &&
                                                          columnPapersRecord
                                                                  .memo !=
                                                              '')
                                                        Text(
                                                          ' with memo',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (homeUsersRecord.papersPermanentBlock ?? true)
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(1, -1),
                            end: AlignmentDirectional(-1, 1),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/undraw_notify_re_65on.svg',
                              width: 140,
                              height: 140,
                              fit: BoxFit.fitHeight,
                            ).animated(
                                [animationsMap['imageOnPageLoadAnimation']!]),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                              child: Text(
                                'Account Blocked',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ).animated(
                                  [animationsMap['textOnPageLoadAnimation1']!]),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30, 12, 30, 120),
                              child: Text(
                                'This account has been permenantly blocked due to misconduct.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ).animated(
                                  [animationsMap['textOnPageLoadAnimation2']!]),
                            ),
                          ],
                        ).animated(
                            [animationsMap['columnOnPageLoadAnimation']!]),
                      ).animated(
                          [animationsMap['containerOnPageLoadAnimation']!]),
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
