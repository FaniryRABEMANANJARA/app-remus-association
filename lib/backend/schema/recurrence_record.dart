import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RecurrenceRecord extends FirestoreRecord {
  RecurrenceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "recurrene" field.
  String? _recurrene;
  String get recurrene => _recurrene ?? '';
  bool hasRecurrene() => _recurrene != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _date = snapshotData['date'] as String?;
    _recurrene = snapshotData['recurrene'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recurrence');

  static Stream<RecurrenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecurrenceRecord.fromSnapshot(s));

  static Future<RecurrenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecurrenceRecord.fromSnapshot(s));

  static RecurrenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecurrenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecurrenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecurrenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecurrenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecurrenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecurrenceRecordData({
  String? type,
  String? date,
  String? recurrene,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'date': date,
      'recurrene': recurrene,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecurrenceRecordDocumentEquality implements Equality<RecurrenceRecord> {
  const RecurrenceRecordDocumentEquality();

  @override
  bool equals(RecurrenceRecord? e1, RecurrenceRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.date == e2?.date &&
        e1?.recurrene == e2?.recurrene;
  }

  @override
  int hash(RecurrenceRecord? e) =>
      const ListEquality().hash([e?.type, e?.date, e?.recurrene]);

  @override
  bool isValidKey(Object? o) => o is RecurrenceRecord;
}
