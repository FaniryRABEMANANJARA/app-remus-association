import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "maison" field.
  String? _maison;
  String get maison => _maison ?? '';
  bool hasMaison() => _maison != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "prenoms" field.
  String? _prenoms;
  String get prenoms => _prenoms ?? '';
  bool hasPrenoms() => _prenoms != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  bool hasSexe() => _sexe != null;

  // "information_perso" field.
  String? _informationPerso;
  String get informationPerso => _informationPerso ?? '';
  bool hasInformationPerso() => _informationPerso != null;

  // "information_med" field.
  String? _informationMed;
  String get informationMed => _informationMed ?? '';
  bool hasInformationMed() => _informationMed != null;

  // "vehicule" field.
  String? _vehicule;
  String get vehicule => _vehicule ?? '';
  bool hasVehicule() => _vehicule != null;

  // "auto_entrepreneur" field.
  String? _autoEntrepreneur;
  String get autoEntrepreneur => _autoEntrepreneur ?? '';
  bool hasAutoEntrepreneur() => _autoEntrepreneur != null;

  // "numSIRET" field.
  String? _numSIRET;
  String get numSIRET => _numSIRET ?? '';
  bool hasNumSIRET() => _numSIRET != null;

  // "taux_horaire" field.
  String? _tauxHoraire;
  String get tauxHoraire => _tauxHoraire ?? '';
  bool hasTauxHoraire() => _tauxHoraire != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _nom = snapshotData['nom'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _maison = snapshotData['maison'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _prenoms = snapshotData['prenoms'] as String?;
    _sexe = snapshotData['sexe'] as String?;
    _informationPerso = snapshotData['information_perso'] as String?;
    _informationMed = snapshotData['information_med'] as String?;
    _vehicule = snapshotData['vehicule'] as String?;
    _autoEntrepreneur = snapshotData['auto_entrepreneur'] as String?;
    _numSIRET = snapshotData['numSIRET'] as String?;
    _tauxHoraire = snapshotData['taux_horaire'] as String?;
    _role = snapshotData['role'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? nom,
  String? adresse,
  String? maison,
  String? photoUrl,
  String? phoneNumber,
  DateTime? createdTime,
  String? uid,
  String? displayName,
  String? prenoms,
  String? sexe,
  String? informationPerso,
  String? informationMed,
  String? vehicule,
  String? autoEntrepreneur,
  String? numSIRET,
  String? tauxHoraire,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'nom': nom,
      'adresse': adresse,
      'maison': maison,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'created_time': createdTime,
      'uid': uid,
      'display_name': displayName,
      'prenoms': prenoms,
      'sexe': sexe,
      'information_perso': informationPerso,
      'information_med': informationMed,
      'vehicule': vehicule,
      'auto_entrepreneur': autoEntrepreneur,
      'numSIRET': numSIRET,
      'taux_horaire': tauxHoraire,
      'role': role,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.nom == e2?.nom &&
        e1?.adresse == e2?.adresse &&
        e1?.maison == e2?.maison &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName &&
        e1?.prenoms == e2?.prenoms &&
        e1?.sexe == e2?.sexe &&
        e1?.informationPerso == e2?.informationPerso &&
        e1?.informationMed == e2?.informationMed &&
        e1?.vehicule == e2?.vehicule &&
        e1?.autoEntrepreneur == e2?.autoEntrepreneur &&
        e1?.numSIRET == e2?.numSIRET &&
        e1?.tauxHoraire == e2?.tauxHoraire &&
        e1?.role == e2?.role;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.nom,
        e?.adresse,
        e?.maison,
        e?.photoUrl,
        e?.phoneNumber,
        e?.createdTime,
        e?.uid,
        e?.displayName,
        e?.prenoms,
        e?.sexe,
        e?.informationPerso,
        e?.informationMed,
        e?.vehicule,
        e?.autoEntrepreneur,
        e?.numSIRET,
        e?.tauxHoraire,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
