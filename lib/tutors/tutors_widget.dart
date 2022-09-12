import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/report_user_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class TutorsWidget extends StatefulWidget {
  const TutorsWidget({Key? key}) : super(key: key);

  @override
  _TutorsWidgetState createState() => _TutorsWidgetState();
}

class _TutorsWidgetState extends State<TutorsWidget>
    with TickerProviderStateMixin {
  ChatsRecord? createdChat;
  PagingController<DocumentSnapshot?, UsersRecord>? _pagingController;
  Query? _pagingQuery;
  List<StreamSubscription?> _streamSubscriptions = [];

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 70),
        scale: 0.9,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 40),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 70),
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

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'tutors'});
  }

  @override
  void dispose() {
    _streamSubscriptions.forEach((s) => s?.cancel());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        iconTheme:
            IconThemeData(color: FlutterFlowTheme.of(context).secondaryColor),
        automaticallyImplyLeading: true,
        title: Text(
          'Tutors',
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    'Choose a Tutor',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Ubuntu',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                  ),
                ),
                PagedListView<DocumentSnapshot<Object?>?, UsersRecord>(
                  pagingController: () {
                    final Query<Object?> Function(Query<Object?>) queryBuilder =
                        (usersRecord) =>
                            usersRecord.where('tutor', isEqualTo: true);
                    if (_pagingController != null) {
                      final query = queryBuilder(UsersRecord.collection);
                      if (query != _pagingQuery) {
                        // The query has changed
                        _pagingQuery = query;
                        _streamSubscriptions.forEach((s) => s?.cancel());
                        _streamSubscriptions.clear();
                        _pagingController!.refresh();
                      }
                      return _pagingController!;
                    }

                    _pagingController = PagingController(firstPageKey: null);
                    _pagingQuery = queryBuilder(UsersRecord.collection);
                    _pagingController!.addPageRequestListener((nextPageMarker) {
                      queryUsersRecordPage(
                        queryBuilder: (usersRecord) =>
                            usersRecord.where('tutor', isEqualTo: true),
                        nextPageMarker: nextPageMarker,
                        pageSize: 25,
                        isStream: true,
                      ).then((page) {
                        _pagingController!.appendPage(
                          page.data,
                          page.nextPageMarker,
                        );
                        final streamSubscription =
                            page.dataStream?.listen((data) {
                          final itemIndexes = _pagingController!.itemList!
                              .asMap()
                              .map((k, v) => MapEntry(v.reference.id, k));
                          data.forEach((item) {
                            final index = itemIndexes[item.reference.id];
                            final items = _pagingController!.itemList!;
                            if (index != null) {
                              items.replaceRange(index, index + 1, [item]);
                              _pagingController!.itemList = {
                                for (var item in items) item.reference: item
                              }.values.toList();
                            }
                          });
                          setState(() {});
                        });
                        _streamSubscriptions.add(streamSubscription);
                      });
                    });
                    return _pagingController!;
                  }(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<UsersRecord>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => Center(
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: SpinKitFadingCube(
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          size: 25,
                        ),
                      ),
                    ),

                    itemBuilder: (context, _, listViewIndex) {
                      final listViewUsersRecord =
                          _pagingController!.itemList![listViewIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 44),
                        child: Container(
                          width: double.infinity,
                          height: 400,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                valueOrDefault<String>(
                                  listViewUsersRecord.photoUrl,
                                  'https://images.unsplash.com/photo-1652207168425-33b5bb4c14b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=900&q=60',
                                ),
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x2B202529),
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRect(
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 5,
                                    ),
                                    child: Container(
                                      width: double.infinity,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Color(0x6C000000),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 16, 16, 16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listViewUsersRecord.displayName!,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        color: Colors.white,
                                                      ),
                                            ).animated([
                                              animationsMap[
                                                  'textOnPageLoadAnimation']!
                                            ]),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 0),
                                              child: Text(
                                                'Rating: ${listViewUsersRecord.rating?.toString()}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          color: Colors.white,
                                                        ),
                                              ),
                                            ),
                                            StreamBuilder<List<SubjectsRecord>>(
                                              stream: querySubjectsRecord(
                                                queryBuilder: (subjectsRecord) =>
                                                    subjectsRecord.where(
                                                        'users',
                                                        arrayContains:
                                                            listViewUsersRecord
                                                                .reference),
                                                limit: 5,
                                              ),
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
                                                    rowSubjectsRecordList =
                                                    snapshot.data!;
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      rowSubjectsRecordList
                                                          .length, (rowIndex) {
                                                    final rowSubjectsRecord =
                                                        rowSubjectsRecordList[
                                                            rowIndex];
                                                    return Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 4, 0, 0),
                                                        child: Text(
                                                          rowSubjectsRecord
                                                              .subjectName!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (listViewUsersRecord
                                                              .phoneNumber !=
                                                          null &&
                                                      listViewUsersRecord
                                                              .phoneNumber !=
                                                          '')
                                                    InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'TUTORS_PAGE_Icon_jjaya8c4_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Icon_Launch-U-R-L');
                                                        await launchURL(
                                                            'tel:${listViewUsersRecord.phoneNumber}');
                                                      },
                                                      child: Icon(
                                                        Icons.call_sharp,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 0, 0, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'TUTORS_PAGE_Icon_kqdzby7u_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Icon_Launch-U-R-L');
                                                        await launchURL(
                                                            'mailto:${listViewUsersRecord.email}');
                                                      },
                                                      child: Icon(
                                                        Icons.outgoing_mail,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16, 0, 0, 0),
                                                    child: StreamBuilder<
                                                        List<ChatsRecord>>(
                                                      stream: queryChatsRecord(
                                                        queryBuilder: (chatsRecord) => chatsRecord
                                                            .where('user_a',
                                                                isEqualTo:
                                                                    currentUserReference)
                                                            .where('user_b',
                                                                isEqualTo:
                                                                    listViewUsersRecord
                                                                        .reference),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 25,
                                                              height: 25,
                                                              child:
                                                                  SpinKitFadingCube(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor,
                                                                size: 25,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<ChatsRecord>
                                                            iconChatsRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the document does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final iconChatsRecord =
                                                            iconChatsRecordList
                                                                    .isNotEmpty
                                                                ? iconChatsRecordList
                                                                    .first
                                                                : null;
                                                        return InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'TUTORS_PAGE_Icon_zwt5otlc_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_Navigate-To');

                                                            context.pushNamed(
                                                              'chatPage',
                                                              queryParams: {
                                                                'chatUser': serializeParam(
                                                                    listViewUsersRecord,
                                                                    ParamType
                                                                        .Document),
                                                                'chatRef': serializeParam(
                                                                    iconChatsRecord!
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'chatUser':
                                                                    listViewUsersRecord,
                                                              },
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .chat_bubble_outlined,
                                                            color: Colors.white,
                                                            size: 24,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  if (!(currentUserDocument
                                                              ?.chatsUser
                                                              ?.toList() ??
                                                          [])
                                                      .contains(
                                                          listViewUsersRecord
                                                              .reference))
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16, 0, 0, 0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        child: InkWell(
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'TUTORS_PAGE_Icon_pkcrq4b1_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Icon_Backend-Call');

                                                            final chatsCreateData =
                                                                {
                                                              ...createChatsRecordData(
                                                                userA:
                                                                    currentUserReference,
                                                                userB: listViewUsersRecord
                                                                    .reference,
                                                              ),
                                                              'users': [
                                                                listViewUsersRecord
                                                                    .reference
                                                              ],
                                                            };
                                                            var chatsRecordReference =
                                                                ChatsRecord
                                                                    .collection
                                                                    .doc();
                                                            await chatsRecordReference
                                                                .set(
                                                                    chatsCreateData);
                                                            createdChat = ChatsRecord
                                                                .getDocumentFromData(
                                                                    chatsCreateData,
                                                                    chatsRecordReference);
                                                            logFirebaseEvent(
                                                                'Icon_Backend-Call');

                                                            final usersUpdateData =
                                                                {
                                                              'chatsUser':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                listViewUsersRecord
                                                                    .reference
                                                              ]),
                                                            };
                                                            await currentUserReference!
                                                                .update(
                                                                    usersUpdateData);
                                                            logFirebaseEvent(
                                                                'Icon_Navigate-To');

                                                            context.pushNamed(
                                                              'chatPage',
                                                              queryParams: {
                                                                'chatUser': serializeParam(
                                                                    listViewUsersRecord,
                                                                    ParamType
                                                                        .Document),
                                                                'chatRef': serializeParam(
                                                                    createdChat!
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'chatUser':
                                                                    listViewUsersRecord,
                                                              },
                                                            );

                                                            setState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .chat_bubble_outlined,
                                                            color: Colors.white,
                                                            size: 24,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1, 0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'TUTORS_PAGE_Text_yqo6lrue_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Text_Bottom-Sheet');
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            context: context,
                                                            builder: (context) {
                                                              return Padding(
                                                                padding: MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                                child:
                                                                    Container(
                                                                  height: 500,
                                                                  child:
                                                                      ReportUserWidget(
                                                                    user: listViewUsersRecord
                                                                        .reference,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'Report User',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                color: Color(
                                                                    0xFFFF0000),
                                                                fontSize: 10,
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
                                    ).animated([
                                      animationsMap[
                                          'containerOnPageLoadAnimation2']!
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).animated(
                            [animationsMap['containerOnPageLoadAnimation1']!]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
