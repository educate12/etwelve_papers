import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/papers_record.dart';
import 'schema/classes_record.dart';
import 'schema/subjects_record.dart';
import 'schema/year_record.dart';
import 'schema/stationary_record.dart';
import 'schema/facebook_classes_record.dart';
import 'schema/tutor_requests_record.dart';
import 'schema/priorities_record.dart';
import 'schema/lessons_record.dart';
import 'schema/comments_record.dart';
import 'schema/chats_record.dart';
import 'schema/chat_messages_record.dart';
import 'schema/reporting_record.dart';
import 'schema/apps_record.dart';
import 'schema/subscriptions_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/papers_record.dart';
export 'schema/classes_record.dart';
export 'schema/subjects_record.dart';
export 'schema/year_record.dart';
export 'schema/stationary_record.dart';
export 'schema/facebook_classes_record.dart';
export 'schema/tutor_requests_record.dart';
export 'schema/priorities_record.dart';
export 'schema/lessons_record.dart';
export 'schema/comments_record.dart';
export 'schema/chats_record.dart';
export 'schema/chat_messages_record.dart';
export 'schema/reporting_record.dart';
export 'schema/apps_record.dart';
export 'schema/subscriptions_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UsersRecord>> queryUsersRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query PapersRecords (as a Stream and as a Future).
Stream<List<PapersRecord>> queryPapersRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PapersRecord.collection,
      PapersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PapersRecord>> queryPapersRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PapersRecord.collection,
      PapersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<PapersRecord>> queryPapersRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      PapersRecord.collection,
      PapersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ClassesRecords (as a Stream and as a Future).
Stream<List<ClassesRecord>> queryClassesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ClassesRecord.collection,
      ClassesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ClassesRecord>> queryClassesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ClassesRecord.collection,
      ClassesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ClassesRecord>> queryClassesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      ClassesRecord.collection,
      ClassesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query SubjectsRecords (as a Stream and as a Future).
Stream<List<SubjectsRecord>> querySubjectsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubjectsRecord.collection,
      SubjectsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubjectsRecord>> querySubjectsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SubjectsRecord.collection,
      SubjectsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<SubjectsRecord>> querySubjectsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      SubjectsRecord.collection,
      SubjectsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query YearRecords (as a Stream and as a Future).
Stream<List<YearRecord>> queryYearRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      YearRecord.collection,
      YearRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<YearRecord>> queryYearRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      YearRecord.collection,
      YearRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<YearRecord>> queryYearRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      YearRecord.collection,
      YearRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query StationaryRecords (as a Stream and as a Future).
Stream<List<StationaryRecord>> queryStationaryRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      StationaryRecord.collection,
      StationaryRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<StationaryRecord>> queryStationaryRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      StationaryRecord.collection,
      StationaryRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<StationaryRecord>> queryStationaryRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      StationaryRecord.collection,
      StationaryRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query FacebookClassesRecords (as a Stream and as a Future).
Stream<List<FacebookClassesRecord>> queryFacebookClassesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FacebookClassesRecord.collection,
      FacebookClassesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FacebookClassesRecord>> queryFacebookClassesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FacebookClassesRecord.collection,
      FacebookClassesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<FacebookClassesRecord>> queryFacebookClassesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      FacebookClassesRecord.collection,
      FacebookClassesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query TutorRequestsRecords (as a Stream and as a Future).
Stream<List<TutorRequestsRecord>> queryTutorRequestsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      TutorRequestsRecord.collection,
      TutorRequestsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<TutorRequestsRecord>> queryTutorRequestsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      TutorRequestsRecord.collection,
      TutorRequestsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<TutorRequestsRecord>> queryTutorRequestsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      TutorRequestsRecord.collection,
      TutorRequestsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query PrioritiesRecords (as a Stream and as a Future).
Stream<List<PrioritiesRecord>> queryPrioritiesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PrioritiesRecord.collection,
      PrioritiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PrioritiesRecord>> queryPrioritiesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PrioritiesRecord.collection,
      PrioritiesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<PrioritiesRecord>> queryPrioritiesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      PrioritiesRecord.collection,
      PrioritiesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query LessonsRecords (as a Stream and as a Future).
Stream<List<LessonsRecord>> queryLessonsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LessonsRecord.collection,
      LessonsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LessonsRecord>> queryLessonsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LessonsRecord.collection,
      LessonsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<LessonsRecord>> queryLessonsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      LessonsRecord.collection,
      LessonsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CommentsRecords (as a Stream and as a Future).
Stream<List<CommentsRecord>> queryCommentsRecord({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CommentsRecord.collection(parent),
      CommentsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CommentsRecord>> queryCommentsRecordOnce({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CommentsRecord.collection(parent),
      CommentsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CommentsRecord>> queryCommentsRecordPage({
  DocumentReference? parent,
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      CommentsRecord.collection(parent),
      CommentsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ChatsRecords (as a Stream and as a Future).
Stream<List<ChatsRecord>> queryChatsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChatsRecord.collection,
      ChatsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChatsRecord>> queryChatsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChatsRecord.collection,
      ChatsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChatsRecord>> queryChatsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      ChatsRecord.collection,
      ChatsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ChatMessagesRecords (as a Stream and as a Future).
Stream<List<ChatMessagesRecord>> queryChatMessagesRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ChatMessagesRecord>> queryChatMessagesRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ChatMessagesRecord>> queryChatMessagesRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      ChatMessagesRecord.collection,
      ChatMessagesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ReportingRecords (as a Stream and as a Future).
Stream<List<ReportingRecord>> queryReportingRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ReportingRecord.collection,
      ReportingRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ReportingRecord>> queryReportingRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ReportingRecord.collection,
      ReportingRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ReportingRecord>> queryReportingRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      ReportingRecord.collection,
      ReportingRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query AppsRecords (as a Stream and as a Future).
Stream<List<AppsRecord>> queryAppsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      AppsRecord.collection,
      AppsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<AppsRecord>> queryAppsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      AppsRecord.collection,
      AppsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<AppsRecord>> queryAppsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      AppsRecord.collection,
      AppsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query SubscriptionsRecords (as a Stream and as a Future).
Stream<List<SubscriptionsRecord>> querySubscriptionsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      SubscriptionsRecord.collection,
      SubscriptionsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<SubscriptionsRecord>> querySubscriptionsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      SubscriptionsRecord.collection,
      SubscriptionsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<SubscriptionsRecord>> querySubscriptionsRecordPage({
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) =>
    queryCollectionPage(
      SubscriptionsRecord.collection,
      SubscriptionsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query)? queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
