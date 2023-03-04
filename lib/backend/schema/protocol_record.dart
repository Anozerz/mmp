import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'protocol_record.g.dart';

abstract class ProtocolRecord
    implements Built<ProtocolRecord, ProtocolRecordBuilder> {
  static Serializer<ProtocolRecord> get serializer =>
      _$protocolRecordSerializer;

  DocumentReference? get user;

  String? get duration;

  String? get goal1;

  String? get goal2;

  String? get goal3;

  String? get mindful;

  String? get waiver1;

  String? get waiver2;

  String? get waiver3;

  String? get sleep;

  @BuiltValueField(wireName: 'activity_days')
  int? get activityDays;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProtocolRecordBuilder builder) => builder
    ..duration = ''
    ..goal1 = ''
    ..goal2 = ''
    ..goal3 = ''
    ..mindful = ''
    ..waiver1 = ''
    ..waiver2 = ''
    ..waiver3 = ''
    ..sleep = ''
    ..activityDays = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('protocol');

  static Stream<ProtocolRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProtocolRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProtocolRecord._();
  factory ProtocolRecord([void Function(ProtocolRecordBuilder) updates]) =
      _$ProtocolRecord;

  static ProtocolRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProtocolRecordData({
  DocumentReference? user,
  String? duration,
  String? goal1,
  String? goal2,
  String? goal3,
  String? mindful,
  String? waiver1,
  String? waiver2,
  String? waiver3,
  String? sleep,
  int? activityDays,
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    ProtocolRecord.serializer,
    ProtocolRecord(
      (p) => p
        ..user = user
        ..duration = duration
        ..goal1 = goal1
        ..goal2 = goal2
        ..goal3 = goal3
        ..mindful = mindful
        ..waiver1 = waiver1
        ..waiver2 = waiver2
        ..waiver3 = waiver3
        ..sleep = sleep
        ..activityDays = activityDays
        ..createdAt = createdAt,
    ),
  );

  return firestoreData;
}
