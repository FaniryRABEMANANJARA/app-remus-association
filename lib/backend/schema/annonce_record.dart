import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AnnonceRecord extends FirestoreRecord {
  AnnonceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _date = snapshotData['date'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('annonce');

  static Stream<AnnonceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnonceRecord.fromSnapshot(s));

  static Future<AnnonceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnonceRecord.fromSnapshot(s));

  static AnnonceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnonceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnonceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnonceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnonceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnonceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnonceRecordData({
  String? nom,
  String? date,
  String? description,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'date': date,
      'description': description,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnonceRecordDocumentEquality implements Equality<AnnonceRecord> {
  const AnnonceRecordDocumentEquality();

  @override
  bool equals(AnnonceRecord? e1, AnnonceRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.date == e2?.date &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image;
  }

  @override
  int hash(AnnonceRecord? e) =>
      const ListEquality().hash([e?.nom, e?.date, e?.description, e?.image]);

  @override
  bool isValidKey(Object? o) => o is AnnonceRecord;
}
