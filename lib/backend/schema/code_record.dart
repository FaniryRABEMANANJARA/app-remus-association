import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CodeRecord extends FirestoreRecord {
  CodeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  void _initializeFields() {
    _code = snapshotData['code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('code');

  static Stream<CodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CodeRecord.fromSnapshot(s));

  static Future<CodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CodeRecord.fromSnapshot(s));

  static CodeRecord fromSnapshot(DocumentSnapshot snapshot) => CodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCodeRecordData({
  String? code,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'code': code,
    }.withoutNulls,
  );

  return firestoreData;
}

class CodeRecordDocumentEquality implements Equality<CodeRecord> {
  const CodeRecordDocumentEquality();

  @override
  bool equals(CodeRecord? e1, CodeRecord? e2) {
    return e1?.code == e2?.code;
  }

  @override
  int hash(CodeRecord? e) => const ListEquality().hash([e?.code]);

  @override
  bool isValidKey(Object? o) => o is CodeRecord;
}
