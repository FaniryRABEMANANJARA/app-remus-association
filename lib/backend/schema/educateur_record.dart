import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EducateurRecord extends FirestoreRecord {
  EducateurRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _contact = snapshotData['contact'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('educateur');

  static Stream<EducateurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EducateurRecord.fromSnapshot(s));

  static Future<EducateurRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EducateurRecord.fromSnapshot(s));

  static EducateurRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EducateurRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EducateurRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EducateurRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EducateurRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EducateurRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEducateurRecordData({
  String? nom,
  String? prenom,
  String? contact,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'prenom': prenom,
      'contact': contact,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class EducateurRecordDocumentEquality implements Equality<EducateurRecord> {
  const EducateurRecordDocumentEquality();

  @override
  bool equals(EducateurRecord? e1, EducateurRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prenom == e2?.prenom &&
        e1?.contact == e2?.contact &&
        e1?.email == e2?.email;
  }

  @override
  int hash(EducateurRecord? e) =>
      const ListEquality().hash([e?.nom, e?.prenom, e?.contact, e?.email]);

  @override
  bool isValidKey(Object? o) => o is EducateurRecord;
}
