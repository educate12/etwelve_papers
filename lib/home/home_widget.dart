import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  TextEditingController? gradeController;

  TextEditingController? yearController;

  String? subjectsValue;
  String? syllabusValue;
  PagingController<DocumentSnapshot?, SubjectsRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

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
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
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
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 1,
                          child: Stack(
                            children: [
                              Image.network(
                                valueOrDefault<String>(
                                  homeUsersRecord.photoUrl,
                                  'https://images.unsplash.com/photo-1630332458162-acc073374da7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
                                ),
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height * 1,
                                fit: BoxFit.fitHeight,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x0014181B),
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground
                                      ],
                                      stops: [0, 0.4],
                                      begin: AlignmentDirectional(0, -1),
                                      end: AlignmentDirectional(0, 1),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 35, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'HOME_PAGE_Icon_o4pcfxx0_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Icon_Navigate-To');

                                                    context.pushNamed(
                                                      'chats',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .leftToRight,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  100),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.notifications_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 30,
                                                  ),
                                                ),
                                                Text(
                                                  homeUsersRecord.displayName!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 20,
                                                      ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 50,
                                                  buttonSize: 50,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: Icon(
                                                    Icons.menu,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryColor,
                                                    size: 28,
                                                  ),
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'HOME_PAGE_menu_ICN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'IconButton_Navigate-To');

                                                    context.pushNamed(
                                                      'profile',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  100),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 2,
                                            indent: 130,
                                            endIndent: 130,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          FlutterFlowChoiceChips(
                                            initiallySelected:
                                                syllabusValue != null
                                                    ? [syllabusValue!]
                                                    : ['caps'],
                                            options: [
                                              ChipData('caps'),
                                              ChipData('ieb')
                                            ],
                                            onChanged: (val) => setState(() =>
                                                syllabusValue = val?.first),
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  Color(0xFF323B45),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color:
                                                            Color(0xFF323B45),
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
                                          Divider(
                                            thickness: 2,
                                            indent: 130,
                                            endIndent: 130,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.05, 0.05),
                                            child: FutureBuilder<
                                                List<SubjectsRecord>>(
                                              future: querySubjectsRecordOnce(),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 25,
                                                      height: 25,
                                                      child: SpinKitFadingCube(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                  initiallySelected:
                                                      subjectsValue != null
                                                          ? [subjectsValue!]
                                                          : ['Mathematics'],
                                                  options:
                                                      subjectsSubjectsRecordList
                                                          .map((e) =>
                                                              e.subjectName!)
                                                          .toList()
                                                          .map((label) =>
                                                              ChipData(label))
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => subjectsValue =
                                                          val?.first),
                                                  selectedChipStyle: ChipStyle(
                                                    backgroundColor:
                                                        Color(0xFF323B45),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          color: Colors.white,
                                                        ),
                                                    iconColor: Colors.white,
                                                    iconSize: 18,
                                                    elevation: 4,
                                                  ),
                                                  unselectedChipStyle:
                                                      ChipStyle(
                                                    backgroundColor:
                                                        Colors.white,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          color:
                                                              Color(0xFF323B45),
                                                        ),
                                                    iconColor:
                                                        Color(0xFF323B45),
                                                    iconSize: 18,
                                                    elevation: 4,
                                                  ),
                                                  chipSpacing: 0,
                                                  multiselect: false,
                                                  initialized:
                                                      subjectsValue != null,
                                                  alignment:
                                                      WrapAlignment.center,
                                                );
                                              },
                                            ),
                                          ),
                                          Divider(
                                            thickness: 2,
                                            indent: 130,
                                            endIndent: 130,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 10),
                                                      child: TextFormField(
                                                        controller:
                                                            yearController,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          'yearController',
                                                          Duration(
                                                              milliseconds:
                                                                  100),
                                                          () => setState(() {}),
                                                        ),
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Year',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Ubuntu',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          filled: true,
                                                          fillColor: Colors
                                                              .transparent,
                                                        ),
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
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 10),
                                                      child: TextFormField(
                                                        controller:
                                                            gradeController ??=
                                                                TextEditingController(
                                                          text: homeUsersRecord
                                                              .grade
                                                              ?.toString(),
                                                        ),
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          'gradeController',
                                                          Duration(
                                                              milliseconds:
                                                                  100),
                                                          () => setState(() {}),
                                                        ),
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Grade',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Ubuntu',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          filled: true,
                                                          fillColor: Colors
                                                              .transparent,
                                                        ),
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
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 2,
                                            indent: 130,
                                            endIndent: 130,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: PagedListView<
                                                DocumentSnapshot<Object?>?,
                                                SubjectsRecord>(
                                              pagingController: () {
                                                final Query<Object?> Function(
                                                        Query<Object?>)
                                                    queryBuilder =
                                                    (subjectsRecord) =>
                                                        subjectsRecord.where(
                                                            'subject_name',
                                                            isEqualTo:
                                                                subjectsValue);
                                                if (_pagingController != null) {
                                                  final query = queryBuilder(
                                                      SubjectsRecord
                                                          .collection);
                                                  if (query != _pagingQuery) {
                                                    // The query has changed
                                                    _pagingQuery = query;
                                                    _streamSubscriptions
                                                        .forEach(
                                                            (s) => s?.cancel());
                                                    _streamSubscriptions
                                                        .clear();
                                                    _pagingController!
                                                        .refresh();
                                                  }
                                                  return _pagingController!;
                                                }

                                                _pagingController =
                                                    PagingController(
                                                        firstPageKey: null);
                                                _pagingQuery = queryBuilder(
                                                    SubjectsRecord.collection);
                                                _pagingController!
                                                    .addPageRequestListener(
                                                        (nextPageMarker) {
                                                  querySubjectsRecordPage(
                                                    queryBuilder:
                                                        (subjectsRecord) =>
                                                            subjectsRecord.where(
                                                                'subject_name',
                                                                isEqualTo:
                                                                    subjectsValue),
                                                    nextPageMarker:
                                                        nextPageMarker,
                                                    pageSize: 2,
                                                    isStream: true,
                                                  ).then((page) {
                                                    _pagingController!
                                                        .appendPage(
                                                      page.data,
                                                      page.nextPageMarker,
                                                    );
                                                    final streamSubscription =
                                                        page.dataStream
                                                            ?.listen((data) {
                                                      final itemIndexes =
                                                          _pagingController!
                                                              .itemList!
                                                              .asMap()
                                                              .map((k, v) =>
                                                                  MapEntry(
                                                                      v.reference
                                                                          .id,
                                                                      k));
                                                      data.forEach((item) {
                                                        final index =
                                                            itemIndexes[item
                                                                .reference.id];
                                                        final items =
                                                            _pagingController!
                                                                .itemList!;
                                                        if (index != null) {
                                                          items.replaceRange(
                                                              index,
                                                              index + 1,
                                                              [item]);
                                                          _pagingController!
                                                              .itemList = {
                                                            for (var item
                                                                in items)
                                                              item.reference:
                                                                  item
                                                          }.values.toList();
                                                        }
                                                      });
                                                      setState(() {});
                                                    });
                                                    _streamSubscriptions.add(
                                                        streamSubscription);
                                                  });
                                                });
                                                return _pagingController!;
                                              }(),
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              builderDelegate:
                                                  PagedChildBuilderDelegate<
                                                      SubjectsRecord>(
                                                // Customize what your widget looks like when it's loading the first page.
                                                firstPageProgressIndicatorBuilder:
                                                    (_) => Center(
                                                  child: SizedBox(
                                                    width: 25,
                                                    height: 25,
                                                    child: SpinKitFadingCube(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryColor,
                                                      size: 25,
                                                    ),
                                                  ),
                                                ),

                                                itemBuilder: (context, _,
                                                    listViewIndex) {
                                                  final listViewSubjectsRecord =
                                                      _pagingController!
                                                              .itemList![
                                                          listViewIndex];
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 3),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                listViewSubjectsRecord
                                                                    .subjectName!,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Ubuntu',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 1),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryColor,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: StreamBuilder<
                                                                List<
                                                                    PapersRecord>>(
                                                              stream:
                                                                  queryPapersRecord(
                                                                queryBuilder: (papersRecord) =>
                                                                    papersRecord
                                                                        .where(
                                                                            'paper_subject',
                                                                            isEqualTo: listViewSubjectsRecord
                                                                                .reference)
                                                                        .where(
                                                                            'year',
                                                                            isEqualTo: int.parse(yearController!
                                                                                .text))
                                                                        .where(
                                                                            'syllabus',
                                                                            isEqualTo:
                                                                                syllabusValue)
                                                                        .where(
                                                                            'grade',
                                                                            isEqualTo: valueOrDefault<
                                                                                double>(
                                                                              double.parse(gradeController?.text ?? ''),
                                                                              12.0,
                                                                            ))
                                                                        .orderBy(
                                                                            'paper'),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 25,
                                                                      height:
                                                                          25,
                                                                      child:
                                                                          SpinKitFadingCube(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryColor,
                                                                        size:
                                                                            25,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<PapersRecord>
                                                                    papersColumnPapersRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: List.generate(
                                                                        papersColumnPapersRecordList
                                                                            .length,
                                                                        (papersColumnIndex) {
                                                                      final papersColumnPapersRecord =
                                                                          papersColumnPapersRecordList[
                                                                              papersColumnIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                        child:
                                                                            InkWell(
                                                                          onTap:
                                                                              () async {
                                                                            logFirebaseEvent('HOME_PAGE_Row_2x1c3x7v_ON_TAP');
                                                                            logFirebaseEvent('Row_Backend-Call');

                                                                            final papersUpdateData =
                                                                                {
                                                                              'openners': FieldValue.arrayUnion([
                                                                                currentUserReference
                                                                              ]),
                                                                            };
                                                                            await papersColumnPapersRecord.reference.update(papersUpdateData);
                                                                            logFirebaseEvent('Row_Navigate-To');

                                                                            context.pushNamed(
                                                                              'viewer',
                                                                              queryParams: {
                                                                                'paper': serializeParam(papersColumnPapersRecord.reference, ParamType.DocumentReference),
                                                                              }.withoutNulls,
                                                                            );
                                                                          },
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: InkWell(
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('HOME_PAGE_Text_ffgrol5y_ON_TAP');
                                                                                    logFirebaseEvent('Text_Backend-Call');

                                                                                    final papersUpdateData = {
                                                                                      'openners': FieldValue.arrayUnion([
                                                                                        currentUserReference
                                                                                      ]),
                                                                                    };
                                                                                    await papersColumnPapersRecord.reference.update(papersUpdateData);
                                                                                    logFirebaseEvent('Text_Navigate-To');

                                                                                    context.pushNamed(
                                                                                      'viewer',
                                                                                      queryParams: {
                                                                                        'paper': serializeParam(papersColumnPapersRecord.reference, ParamType.DocumentReference),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Text(
                                                                                    'P${formatNumber(
                                                                                      papersColumnPapersRecord.paper,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.automatic,
                                                                                    )} ${papersColumnPapersRecord.month} with memo',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Ubuntu',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 12,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontStyle: FontStyle.italic,
                                                                                          decoration: TextDecoration.underline,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Icon(
                                                                                Icons.keyboard_arrow_right,
                                                                                color: FlutterFlowTheme.of(context).secondaryColor,
                                                                                size: 20,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
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
