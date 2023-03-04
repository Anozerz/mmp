// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protocol_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtocolRecord> _$protocolRecordSerializer =
    new _$ProtocolRecordSerializer();

class _$ProtocolRecordSerializer
    implements StructuredSerializer<ProtocolRecord> {
  @override
  final Iterable<Type> types = const [ProtocolRecord, _$ProtocolRecord];
  @override
  final String wireName = 'ProtocolRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProtocolRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.goal1;
    if (value != null) {
      result
        ..add('goal1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.goal2;
    if (value != null) {
      result
        ..add('goal2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.goal3;
    if (value != null) {
      result
        ..add('goal3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mindful;
    if (value != null) {
      result
        ..add('mindful')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.waiver1;
    if (value != null) {
      result
        ..add('waiver1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.waiver2;
    if (value != null) {
      result
        ..add('waiver2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.waiver3;
    if (value != null) {
      result
        ..add('waiver3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sleep;
    if (value != null) {
      result
        ..add('sleep')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activityDays;
    if (value != null) {
      result
        ..add('activity_days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
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
  ProtocolRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtocolRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'goal1':
          result.goal1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'goal2':
          result.goal2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'goal3':
          result.goal3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mindful':
          result.mindful = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'waiver1':
          result.waiver1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'waiver2':
          result.waiver2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'waiver3':
          result.waiver3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sleep':
          result.sleep = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activity_days':
          result.activityDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
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

class _$ProtocolRecord extends ProtocolRecord {
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? duration;
  @override
  final String? goal1;
  @override
  final String? goal2;
  @override
  final String? goal3;
  @override
  final String? mindful;
  @override
  final String? waiver1;
  @override
  final String? waiver2;
  @override
  final String? waiver3;
  @override
  final String? sleep;
  @override
  final int? activityDays;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProtocolRecord([void Function(ProtocolRecordBuilder)? updates]) =>
      (new ProtocolRecordBuilder()..update(updates))._build();

  _$ProtocolRecord._(
      {this.user,
      this.duration,
      this.goal1,
      this.goal2,
      this.goal3,
      this.mindful,
      this.waiver1,
      this.waiver2,
      this.waiver3,
      this.sleep,
      this.activityDays,
      this.createdAt,
      this.ffRef})
      : super._();

  @override
  ProtocolRecord rebuild(void Function(ProtocolRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtocolRecordBuilder toBuilder() =>
      new ProtocolRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtocolRecord &&
        user == other.user &&
        duration == other.duration &&
        goal1 == other.goal1 &&
        goal2 == other.goal2 &&
        goal3 == other.goal3 &&
        mindful == other.mindful &&
        waiver1 == other.waiver1 &&
        waiver2 == other.waiver2 &&
        waiver3 == other.waiver3 &&
        sleep == other.sleep &&
        activityDays == other.activityDays &&
        createdAt == other.createdAt &&
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
                                            $jc(
                                                $jc($jc(0, user.hashCode),
                                                    duration.hashCode),
                                                goal1.hashCode),
                                            goal2.hashCode),
                                        goal3.hashCode),
                                    mindful.hashCode),
                                waiver1.hashCode),
                            waiver2.hashCode),
                        waiver3.hashCode),
                    sleep.hashCode),
                activityDays.hashCode),
            createdAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProtocolRecord')
          ..add('user', user)
          ..add('duration', duration)
          ..add('goal1', goal1)
          ..add('goal2', goal2)
          ..add('goal3', goal3)
          ..add('mindful', mindful)
          ..add('waiver1', waiver1)
          ..add('waiver2', waiver2)
          ..add('waiver3', waiver3)
          ..add('sleep', sleep)
          ..add('activityDays', activityDays)
          ..add('createdAt', createdAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProtocolRecordBuilder
    implements Builder<ProtocolRecord, ProtocolRecordBuilder> {
  _$ProtocolRecord? _$v;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _goal1;
  String? get goal1 => _$this._goal1;
  set goal1(String? goal1) => _$this._goal1 = goal1;

  String? _goal2;
  String? get goal2 => _$this._goal2;
  set goal2(String? goal2) => _$this._goal2 = goal2;

  String? _goal3;
  String? get goal3 => _$this._goal3;
  set goal3(String? goal3) => _$this._goal3 = goal3;

  String? _mindful;
  String? get mindful => _$this._mindful;
  set mindful(String? mindful) => _$this._mindful = mindful;

  String? _waiver1;
  String? get waiver1 => _$this._waiver1;
  set waiver1(String? waiver1) => _$this._waiver1 = waiver1;

  String? _waiver2;
  String? get waiver2 => _$this._waiver2;
  set waiver2(String? waiver2) => _$this._waiver2 = waiver2;

  String? _waiver3;
  String? get waiver3 => _$this._waiver3;
  set waiver3(String? waiver3) => _$this._waiver3 = waiver3;

  String? _sleep;
  String? get sleep => _$this._sleep;
  set sleep(String? sleep) => _$this._sleep = sleep;

  int? _activityDays;
  int? get activityDays => _$this._activityDays;
  set activityDays(int? activityDays) => _$this._activityDays = activityDays;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProtocolRecordBuilder() {
    ProtocolRecord._initializeBuilder(this);
  }

  ProtocolRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _duration = $v.duration;
      _goal1 = $v.goal1;
      _goal2 = $v.goal2;
      _goal3 = $v.goal3;
      _mindful = $v.mindful;
      _waiver1 = $v.waiver1;
      _waiver2 = $v.waiver2;
      _waiver3 = $v.waiver3;
      _sleep = $v.sleep;
      _activityDays = $v.activityDays;
      _createdAt = $v.createdAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtocolRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProtocolRecord;
  }

  @override
  void update(void Function(ProtocolRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProtocolRecord build() => _build();

  _$ProtocolRecord _build() {
    final _$result = _$v ??
        new _$ProtocolRecord._(
            user: user,
            duration: duration,
            goal1: goal1,
            goal2: goal2,
            goal3: goal3,
            mindful: mindful,
            waiver1: waiver1,
            waiver2: waiver2,
            waiver3: waiver3,
            sleep: sleep,
            activityDays: activityDays,
            createdAt: createdAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
