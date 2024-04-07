import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RessourceRecord extends FirestoreRecord {
  RessourceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "fichier" field.
  String? _fichier;
  String get fichier => _fichier ?? '';
  bool hasFichier() => _fichier != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _fichier = snapshotData['fichier'] as String?;
    _date = snapshotData['date'] as String?;
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ressource');

  static Stream<RessourceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RessourceRecord.fromSnapshot(s));

  static Future<RessourceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RessourceRecord.fromSnapshot(s));

  static RessourceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RessourceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RessourceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RessourceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RessourceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RessourceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRessourceRecordData({
  String? nom,
  String? fichier,
  String? date,
  String? type,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'fichier': fichier,
      'date': date,
      'type': type,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class RessourceRecordDocumentEquality implements Equality<RessourceRecord> {
  const RessourceRecordDocumentEquality();

  @override
  bool equals(RessourceRecord? e1, RessourceRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.fichier == e2?.fichier &&
        e1?.date == e2?.date &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description;
  }

  @override
  int hash(RessourceRecord? e) => const ListEquality()
      .hash([e?.nom, e?.fichier, e?.date, e?.type, e?.description]);

  @override
  bool isValidKey(Object? o) => o is RessourceRecord;
}
