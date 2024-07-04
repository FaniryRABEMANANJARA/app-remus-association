import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContratRecord extends FirestoreRecord {
  ContratRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  bool hasSignature() => _signature != null;

  // "validation" field.
  String? _validation;
  String get validation => _validation ?? '';
  bool hasValidation() => _validation != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _signature = snapshotData['signature'] as String?;
    _validation = snapshotData['validation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contrat');

  static Stream<ContratRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContratRecord.fromSnapshot(s));

  static Future<ContratRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContratRecord.fromSnapshot(s));

  static ContratRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContratRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContratRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContratRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContratRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContratRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContratRecordData({
  DateTime? date,
  String? signature,
  String? validation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'signature': signature,
      'validation': validation,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContratRecordDocumentEquality implements Equality<ContratRecord> {
  const ContratRecordDocumentEquality();

  @override
  bool equals(ContratRecord? e1, ContratRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.signature == e2?.signature &&
        e1?.validation == e2?.validation;
  }

  @override
  int hash(ContratRecord? e) =>
      const ListEquality().hash([e?.date, e?.signature, e?.validation]);

  @override
  bool isValidKey(Object? o) => o is ContratRecord;
}
