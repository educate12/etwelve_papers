// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reporting_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReportingRecord> _$reportingRecordSerializer =
    new _$ReportingRecordSerializer();

class _$ReportingRecordSerializer
    implements StructuredSerializer<ReportingRecord> {
  @override
  final Iterable<Type> types = const [ReportingRecord, _$ReportingRecord];
  @override
  final String wireName = 'ReportingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReportingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reportedUser;
    if (value != null) {
      result
        ..add('reported_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.reportedVideo;
    if (value != null) {
      result
        ..add('reported_video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reportingUser;
    if (value != null) {
      result
        ..add('reporting_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.reportedPaper;
    if (value != null) {
      result
        ..add('reported_paper')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ReportingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReportingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'reported_user':
          result.reportedUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'reported_video':
          result.reportedVideo = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reporting_user':
          result.reportingUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'reported_paper':
          result.reportedPaper = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ReportingRecord extends ReportingRecord {
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? reportedUser;
  @override
  final DocumentReference<Object?>? reportedVideo;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? reportingUser;
  @override
  final DocumentReference<Object?>? reportedPaper;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReportingRecord([void Function(ReportingRecordBuilder)? updates]) =>
      (new ReportingRecordBuilder()..update(updates))._build();

  _$ReportingRecord._(
      {this.createdTime,
      this.reportedUser,
      this.reportedVideo,
      this.description,
      this.reportingUser,
      this.reportedPaper,
      this.ffRef})
      : super._();

  @override
  ReportingRecord rebuild(void Function(ReportingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportingRecordBuilder toBuilder() =>
      new ReportingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportingRecord &&
        createdTime == other.createdTime &&
        reportedUser == other.reportedUser &&
        reportedVideo == other.reportedVideo &&
        description == other.description &&
        reportingUser == other.reportingUser &&
        reportedPaper == other.reportedPaper &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, createdTime.hashCode),
                            reportedUser.hashCode),
                        reportedVideo.hashCode),
                    description.hashCode),
                reportingUser.hashCode),
            reportedPaper.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportingRecord')
          ..add('createdTime', createdTime)
          ..add('reportedUser', reportedUser)
          ..add('reportedVideo', reportedVideo)
          ..add('description', description)
          ..add('reportingUser', reportingUser)
          ..add('reportedPaper', reportedPaper)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReportingRecordBuilder
    implements Builder<ReportingRecord, ReportingRecordBuilder> {
  _$ReportingRecord? _$v;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _reportedUser;
  DocumentReference<Object?>? get reportedUser => _$this._reportedUser;
  set reportedUser(DocumentReference<Object?>? reportedUser) =>
      _$this._reportedUser = reportedUser;

  DocumentReference<Object?>? _reportedVideo;
  DocumentReference<Object?>? get reportedVideo => _$this._reportedVideo;
  set reportedVideo(DocumentReference<Object?>? reportedVideo) =>
      _$this._reportedVideo = reportedVideo;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _reportingUser;
  DocumentReference<Object?>? get reportingUser => _$this._reportingUser;
  set reportingUser(DocumentReference<Object?>? reportingUser) =>
      _$this._reportingUser = reportingUser;

  DocumentReference<Object?>? _reportedPaper;
  DocumentReference<Object?>? get reportedPaper => _$this._reportedPaper;
  set reportedPaper(DocumentReference<Object?>? reportedPaper) =>
      _$this._reportedPaper = reportedPaper;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReportingRecordBuilder() {
    ReportingRecord._initializeBuilder(this);
  }

  ReportingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdTime = $v.createdTime;
      _reportedUser = $v.reportedUser;
      _reportedVideo = $v.reportedVideo;
      _description = $v.description;
      _reportingUser = $v.reportingUser;
      _reportedPaper = $v.reportedPaper;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportingRecord;
  }

  @override
  void update(void Function(ReportingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportingRecord build() => _build();

  _$ReportingRecord _build() {
    final _$result = _$v ??
        new _$ReportingRecord._(
            createdTime: createdTime,
            reportedUser: reportedUser,
            reportedVideo: reportedVideo,
            description: description,
            reportingUser: reportingUser,
            reportedPaper: reportedPaper,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
