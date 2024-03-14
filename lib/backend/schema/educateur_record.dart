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

  // "information_perso" field.
  String? _informationPerso;
  String get informationPerso => _informationPerso ?? '';
  bool hasInformationPerso() => _informationPerso != null;

  // "information_med" field.
  String? _informationMed;
  String get informationMed => _informationMed ?? '';
  bool hasInformationMed() => _informationMed != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "vehicule" field.
  String? _vehicule;
  String get vehicule => _vehicule ?? '';
  bool hasVehicule() => _vehicule != null;

  // "auto_entrepreneur" field.
  String? _autoEntrepreneur;
  String get autoEntrepreneur => _autoEntrepreneur ?? '';
  bool hasAutoEntrepreneur() => _autoEntrepreneur != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _contact = snapshotData['contact'] as String?;
    _informationPerso = snapshotData['information_perso'] as String?;
    _informationMed = snapshotData['information_med'] as String?;
    _email = snapshotData['email'] as String?;
    _image = snapshotData['image'] as String?;
    _sexe = snapshotData['sexe'] as String?;
    _vehicule = snapshotData['vehicule'] as String?;
    _autoEntrepreneur = snapshotData['auto_entrepreneur'] as String?;
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
  String? informationPerso,
  String? informationMed,
  String? email,
  String? image,
  String? sexe,
  String? vehicule,
  String? autoEntrepreneur,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'prenom': prenom,
      'contact': contact,
      'information_perso': informationPerso,
      'information_med': informationMed,
      'email': email,
      'image': image,
      'sexe': sexe,
      'vehicule': vehicule,
      'auto_entrepreneur': autoEntrepreneur,
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
        e1?.informationPerso == e2?.informationPerso &&
        e1?.informationMed == e2?.informationMed &&
        e1?.email == e2?.email &&
        e1?.image == e2?.image &&
        e1?.sexe == e2?.sexe &&
        e1?.vehicule == e2?.vehicule &&
        e1?.autoEntrepreneur == e2?.autoEntrepreneur;
  }

  @override
  int hash(EducateurRecord? e) => const ListEquality().hash([
        e?.nom,
        e?.prenom,
        e?.contact,
        e?.informationPerso,
        e?.informationMed,
        e?.email,
        e?.image,
        e?.sexe,
        e?.vehicule,
        e?.autoEntrepreneur
      ]);

  @override
  bool isValidKey(Object? o) => o is EducateurRecord;
}
