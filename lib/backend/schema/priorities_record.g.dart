// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priorities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrioritiesRecord> _$prioritiesRecordSerializer =
    new _$PrioritiesRecordSerializer();

class _$PrioritiesRecordSerializer
    implements StructuredSerializer<PrioritiesRecord> {
  @override
  final Iterable<Type> types = const [PrioritiesRecord, _$PrioritiesRecord];
  @override
  final String wireName = 'PrioritiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PrioritiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.completedDate;
    if (value != null) {
      result
        ..add('completed_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.inProgress;
    if (value != null) {
      result
        ..add('in_progress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.completed;
    if (value != null) {
      result
        ..add('completed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.work;
    if (value != null) {
      result
        ..add('work')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owners;
    if (value != null) {
      result
        ..add('owners')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.dueDate;
    if (value != null) {
      result
        ..add('due_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.level;
    if (value != null) {
      result
        ..add('level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PrioritiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrioritiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'completed_date':
          result.completedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'in_progress':
          result.inProgress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'work':
          result.work = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owners':
          result.owners.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'due_date':
          result.dueDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PrioritiesRecord extends PrioritiesRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? createdDate;
  @override
  final DateTime? completedDate;
  @override
  final bool? inProgress;
  @override
  final bool? completed;
  @override
  final bool? deleted;
  @override
  final String? work;
  @override
  final BuiltList<DocumentReference<Object?>>? owners;
  @override
  final DateTime? dueDate;
  @override
  final int? level;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PrioritiesRecord(
          [void Function(PrioritiesRecordBuilder)? updates]) =>
      (new PrioritiesRecordBuilder()..update(updates))._build();

  _$PrioritiesRecord._(
      {this.title,
      this.description,
      this.createdDate,
      this.completedDate,
      this.inProgress,
      this.completed,
      this.deleted,
      this.work,
      this.owners,
      this.dueDate,
      this.level,
      this.ffRef})
      : super._();

  @override
  PrioritiesRecord rebuild(void Function(PrioritiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrioritiesRecordBuilder toBuilder() =>
      new PrioritiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrioritiesRecord &&
        title == other.title &&
        description == other.description &&
        createdDate == other.createdDate &&
        completedDate == other.completedDate &&
        inProgress == other.inProgress &&
        completed == other.completed &&
        deleted == other.deleted &&
        work == other.work &&
        owners == other.owners &&
        dueDate == other.dueDate &&
        level == other.level &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, title.hashCode),
                                                description.hashCode),
                                            createdDate.hashCode),
                                        completedDate.hashCode),
                                    inProgress.hashCode),
                                completed.hashCode),
                            deleted.hashCode),
                        work.hashCode),
                    owners.hashCode),
                dueDate.hashCode),
            level.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrioritiesRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('createdDate', createdDate)
          ..add('completedDate', completedDate)
          ..add('inProgress', inProgress)
          ..add('completed', completed)
          ..add('deleted', deleted)
          ..add('work', work)
          ..add('owners', owners)
          ..add('dueDate', dueDate)
          ..add('level', level)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PrioritiesRecordBuilder
    implements Builder<PrioritiesRecord, PrioritiesRecordBuilder> {
  _$PrioritiesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DateTime? _completedDate;
  DateTime? get completedDate => _$this._completedDate;
  set completedDate(DateTime? completedDate) =>
      _$this._completedDate = completedDate;

  bool? _inProgress;
  bool? get inProgress => _$this._inProgress;
  set inProgress(bool? inProgress) => _$this._inProgress = inProgress;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  String? _work;
  String? get work => _$this._work;
  set work(String? work) => _$this._work = work;

  ListBuilder<DocumentReference<Object?>>? _owners;
  ListBuilder<DocumentReference<Object?>> get owners =>
      _$this._owners ??= new ListBuilder<DocumentReference<Object?>>();
  set owners(ListBuilder<DocumentReference<Object?>>? owners) =>
      _$this._owners = owners;

  DateTime? _dueDate;
  DateTime? get dueDate => _$this._dueDate;
  set dueDate(DateTime? dueDate) => _$this._dueDate = dueDate;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PrioritiesRecordBuilder() {
    PrioritiesRecord._initializeBuilder(this);
  }

  PrioritiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _createdDate = $v.createdDate;
      _completedDate = $v.completedDate;
      _inProgress = $v.inProgress;
      _completed = $v.completed;
      _deleted = $v.deleted;
      _work = $v.work;
      _owners = $v.owners?.toBuilder();
      _dueDate = $v.dueDate;
      _level = $v.level;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrioritiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrioritiesRecord;
  }

  @override
  void update(void Function(PrioritiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrioritiesRecord build() => _build();

  _$PrioritiesRecord _build() {
    _$PrioritiesRecord _$result;
    try {
      _$result = _$v ??
          new _$PrioritiesRecord._(
              title: title,
              description: description,
              createdDate: createdDate,
              completedDate: completedDate,
              inProgress: inProgress,
              completed: completed,
              deleted: deleted,
              work: work,
              owners: _owners?.build(),
              dueDate: dueDate,
              level: level,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owners';
        _owners?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrioritiesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
