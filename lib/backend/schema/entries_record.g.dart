// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entries_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EntriesRecord> _$entriesRecordSerializer =
    new _$EntriesRecordSerializer();

class _$EntriesRecordSerializer implements StructuredSerializer<EntriesRecord> {
  @override
  final Iterable<Type> types = const [EntriesRecord, _$EntriesRecord];
  @override
  final String wireName = 'EntriesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EntriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.journalMood;
    if (value != null) {
      result
        ..add('journalMood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.journalGratitude;
    if (value != null) {
      result
        ..add('journalGratitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalTask1;
    if (value != null) {
      result
        ..add('journalTask1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalTask2;
    if (value != null) {
      result
        ..add('journalTask2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalTask3;
    if (value != null) {
      result
        ..add('journalTask3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalAvoidance1;
    if (value != null) {
      result
        ..add('journalAvoidance1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalNotes;
    if (value != null) {
      result
        ..add('journalNotes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('createdTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  EntriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'journalMood':
          result.journalMood = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'journalGratitude':
          result.journalGratitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalTask1':
          result.journalTask1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalTask2':
          result.journalTask2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalTask3':
          result.journalTask3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalAvoidance1':
          result.journalAvoidance1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalNotes':
          result.journalNotes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdTime':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$EntriesRecord extends EntriesRecord {
  @override
  final double? journalMood;
  @override
  final String? journalGratitude;
  @override
  final String? journalTask1;
  @override
  final String? journalTask2;
  @override
  final String? journalTask3;
  @override
  final String? journalAvoidance1;
  @override
  final String? journalNotes;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EntriesRecord([void Function(EntriesRecordBuilder)? updates]) =>
      (new EntriesRecordBuilder()..update(updates))._build();

  _$EntriesRecord._(
      {this.journalMood,
      this.journalGratitude,
      this.journalTask1,
      this.journalTask2,
      this.journalTask3,
      this.journalAvoidance1,
      this.journalNotes,
      this.user,
      this.createdTime,
      this.ffRef})
      : super._();

  @override
  EntriesRecord rebuild(void Function(EntriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntriesRecordBuilder toBuilder() => new EntriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntriesRecord &&
        journalMood == other.journalMood &&
        journalGratitude == other.journalGratitude &&
        journalTask1 == other.journalTask1 &&
        journalTask2 == other.journalTask2 &&
        journalTask3 == other.journalTask3 &&
        journalAvoidance1 == other.journalAvoidance1 &&
        journalNotes == other.journalNotes &&
        user == other.user &&
        createdTime == other.createdTime &&
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
                                    $jc($jc(0, journalMood.hashCode),
                                        journalGratitude.hashCode),
                                    journalTask1.hashCode),
                                journalTask2.hashCode),
                            journalTask3.hashCode),
                        journalAvoidance1.hashCode),
                    journalNotes.hashCode),
                user.hashCode),
            createdTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntriesRecord')
          ..add('journalMood', journalMood)
          ..add('journalGratitude', journalGratitude)
          ..add('journalTask1', journalTask1)
          ..add('journalTask2', journalTask2)
          ..add('journalTask3', journalTask3)
          ..add('journalAvoidance1', journalAvoidance1)
          ..add('journalNotes', journalNotes)
          ..add('user', user)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EntriesRecordBuilder
    implements Builder<EntriesRecord, EntriesRecordBuilder> {
  _$EntriesRecord? _$v;

  double? _journalMood;
  double? get journalMood => _$this._journalMood;
  set journalMood(double? journalMood) => _$this._journalMood = journalMood;

  String? _journalGratitude;
  String? get journalGratitude => _$this._journalGratitude;
  set journalGratitude(String? journalGratitude) =>
      _$this._journalGratitude = journalGratitude;

  String? _journalTask1;
  String? get journalTask1 => _$this._journalTask1;
  set journalTask1(String? journalTask1) => _$this._journalTask1 = journalTask1;

  String? _journalTask2;
  String? get journalTask2 => _$this._journalTask2;
  set journalTask2(String? journalTask2) => _$this._journalTask2 = journalTask2;

  String? _journalTask3;
  String? get journalTask3 => _$this._journalTask3;
  set journalTask3(String? journalTask3) => _$this._journalTask3 = journalTask3;

  String? _journalAvoidance1;
  String? get journalAvoidance1 => _$this._journalAvoidance1;
  set journalAvoidance1(String? journalAvoidance1) =>
      _$this._journalAvoidance1 = journalAvoidance1;

  String? _journalNotes;
  String? get journalNotes => _$this._journalNotes;
  set journalNotes(String? journalNotes) => _$this._journalNotes = journalNotes;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EntriesRecordBuilder() {
    EntriesRecord._initializeBuilder(this);
  }

  EntriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _journalMood = $v.journalMood;
      _journalGratitude = $v.journalGratitude;
      _journalTask1 = $v.journalTask1;
      _journalTask2 = $v.journalTask2;
      _journalTask3 = $v.journalTask3;
      _journalAvoidance1 = $v.journalAvoidance1;
      _journalNotes = $v.journalNotes;
      _user = $v.user;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntriesRecord;
  }

  @override
  void update(void Function(EntriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntriesRecord build() => _build();

  _$EntriesRecord _build() {
    final _$result = _$v ??
        new _$EntriesRecord._(
            journalMood: journalMood,
            journalGratitude: journalGratitude,
            journalTask1: journalTask1,
            journalTask2: journalTask2,
            journalTask3: journalTask3,
            journalAvoidance1: journalAvoidance1,
            journalNotes: journalNotes,
            user: user,
            createdTime: createdTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
