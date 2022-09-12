// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_requests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TutorRequestsRecord> _$tutorRequestsRecordSerializer =
    new _$TutorRequestsRecordSerializer();

class _$TutorRequestsRecordSerializer
    implements StructuredSerializer<TutorRequestsRecord> {
  @override
  final Iterable<Type> types = const [
    TutorRequestsRecord,
    _$TutorRequestsRecord
  ];
  @override
  final String wireName = 'TutorRequestsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TutorRequestsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.student;
    if (value != null) {
      result
        ..add('student')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.subjects;
    if (value != null) {
      result
        ..add('subjects')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.messageType;
    if (value != null) {
      result
        ..add('messageType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TutorRequestsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TutorRequestsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'student':
          result.student = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'subjects':
          result.subjects = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'messageType':
          result.messageType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$TutorRequestsRecord extends TutorRequestsRecord {
  @override
  final DocumentReference<Object?>? student;
  @override
  final DateTime? createdTime;
  @override
  final String? subjects;
  @override
  final String? messageType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TutorRequestsRecord(
          [void Function(TutorRequestsRecordBuilder)? updates]) =>
      (new TutorRequestsRecordBuilder()..update(updates))._build();

  _$TutorRequestsRecord._(
      {this.student,
      this.createdTime,
      this.subjects,
      this.messageType,
      this.ffRef})
      : super._();

  @override
  TutorRequestsRecord rebuild(
          void Function(TutorRequestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TutorRequestsRecordBuilder toBuilder() =>
      new TutorRequestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TutorRequestsRecord &&
        student == other.student &&
        createdTime == other.createdTime &&
        subjects == other.subjects &&
        messageType == other.messageType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, student.hashCode), createdTime.hashCode),
                subjects.hashCode),
            messageType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TutorRequestsRecord')
          ..add('student', student)
          ..add('createdTime', createdTime)
          ..add('subjects', subjects)
          ..add('messageType', messageType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TutorRequestsRecordBuilder
    implements Builder<TutorRequestsRecord, TutorRequestsRecordBuilder> {
  _$TutorRequestsRecord? _$v;

  DocumentReference<Object?>? _student;
  DocumentReference<Object?>? get student => _$this._student;
  set student(DocumentReference<Object?>? student) => _$this._student = student;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _subjects;
  String? get subjects => _$this._subjects;
  set subjects(String? subjects) => _$this._subjects = subjects;

  String? _messageType;
  String? get messageType => _$this._messageType;
  set messageType(String? messageType) => _$this._messageType = messageType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TutorRequestsRecordBuilder() {
    TutorRequestsRecord._initializeBuilder(this);
  }

  TutorRequestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _student = $v.student;
      _createdTime = $v.createdTime;
      _subjects = $v.subjects;
      _messageType = $v.messageType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TutorRequestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TutorRequestsRecord;
  }

  @override
  void update(void Function(TutorRequestsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TutorRequestsRecord build() => _build();

  _$TutorRequestsRecord _build() {
    final _$result = _$v ??
        new _$TutorRequestsRecord._(
            student: student,
            createdTime: createdTime,
            subjects: subjects,
            messageType: messageType,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
