import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'entries_record.g.dart';

abstract class EntriesRecord
    implements Built<EntriesRecord, EntriesRecordBuilder> {
  static Serializer<EntriesRecord> get serializer => _$entriesRecordSerializer;

  double? get journalMood;

  String? get journalGratitude;

  String? get journalTask1;

  String? get journalTask2;

  String? get journalTask3;

  String? get journalAvoidance1;

  String? get journalNotes;

  DocumentReference? get user;

  DateTime? get createdTime;

  bool? get reflectionActivity;

  String? get reflectionPositivity;

  String? get reflectionAchievment;

  String? get reflectionNotes;

  String? get reflectionMindfulness;

  bool? get reflectionCheck;

  bool? get journalCheck;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EntriesRecordBuilder builder) => builder
    ..journalMood = 0.0
    ..journalGratitude = ''
    ..journalTask1 = ''
    ..journalTask2 = ''
    ..journalTask3 = ''
    ..journalAvoidance1 = ''
    ..journalNotes = ''
    ..reflectionActivity = false
    ..reflectionPositivity = ''
    ..reflectionAchievment = ''
    ..reflectionNotes = ''
    ..reflectionMindfulness = ''
    ..reflectionCheck = false
    ..journalCheck = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('entries');

  static Stream<EntriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EntriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EntriesRecord._();
  factory EntriesRecord([void Function(EntriesRecordBuilder) updates]) =
      _$EntriesRecord;

  static EntriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEntriesRecordData({
  double? journalMood,
  String? journalGratitude,
  String? journalTask1,
  String? journalTask2,
  String? journalTask3,
  String? journalAvoidance1,
  String? journalNotes,
  DocumentReference? user,
  DateTime? createdTime,
  bool? reflectionActivity,
  String? reflectionPositivity,
  String? reflectionAchievment,
  String? reflectionNotes,
  String? reflectionMindfulness,
  bool? reflectionCheck,
  bool? journalCheck,
}) {
  final firestoreData = serializers.toFirestore(
    EntriesRecord.serializer,
    EntriesRecord(
      (e) => e
        ..journalMood = journalMood
        ..journalGratitude = journalGratitude
        ..journalTask1 = journalTask1
        ..journalTask2 = journalTask2
        ..journalTask3 = journalTask3
        ..journalAvoidance1 = journalAvoidance1
        ..journalNotes = journalNotes
        ..user = user
        ..createdTime = createdTime
        ..reflectionActivity = reflectionActivity
        ..reflectionPositivity = reflectionPositivity
        ..reflectionAchievment = reflectionAchievment
        ..reflectionNotes = reflectionNotes
        ..reflectionMindfulness = reflectionMindfulness
        ..reflectionCheck = reflectionCheck
        ..journalCheck = journalCheck,
    ),
  );

  return firestoreData;
}
