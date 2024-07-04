import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MissionenCoursRecord extends FirestoreRecord {
  MissionenCoursRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "annotation" field.
  String? _annotation;
  String get annotation => _annotation ?? '';
  bool hasAnnotation() => _annotation != null;

  // "disponiblite" field.
  String? _disponiblite;
  String get disponiblite => _disponiblite ?? '';
  bool hasDisponiblite() => _disponiblite != null;

  // "information" field.
  String? _information;
  String get information => _information ?? '';
  bool hasInformation() => _information != null;

  // "options" field.
  String? _options;
  String get options => _options ?? '';
  bool hasOptions() => _options != null;

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  // "date_debut" field.
  String? _dateDebut;
  String get dateDebut => _dateDebut ?? '';
  bool hasDateDebut() => _dateDebut != null;

  // "date_fin" field.
  String? _dateFin;
  String get dateFin => _dateFin ?? '';
  bool hasDateFin() => _dateFin != null;

  // "educateur" field.
  DocumentReference? _educateur;
  DocumentReference? get educateur => _educateur;
  bool hasEducateur() => _educateur != null;

  void _initializeFields() {
    _adresse = snapshotData['adresse'] as String?;
    _annotation = snapshotData['annotation'] as String?;
    _disponiblite = snapshotData['disponiblite'] as String?;
    _information = snapshotData['information'] as String?;
    _options = snapshotData['options'] as String?;
    _titre = snapshotData['titre'] as String?;
    _image = snapshotData['image'] as String?;
    _localisation = snapshotData['localisation'] as String?;
    _dateDebut = snapshotData['date_debut'] as String?;
    _dateFin = snapshotData['date_fin'] as String?;
    _educateur = snapshotData['educateur'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('missionenCours');

  static Stream<MissionenCoursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MissionenCoursRecord.fromSnapshot(s));

  static Future<MissionenCoursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MissionenCoursRecord.fromSnapshot(s));

  static MissionenCoursRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MissionenCoursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MissionenCoursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MissionenCoursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MissionenCoursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MissionenCoursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMissionenCoursRecordData({
  String? adresse,
  String? annotation,
  String? disponiblite,
  String? information,
  String? options,
  String? titre,
  String? image,
  String? localisation,
  String? dateDebut,
  String? dateFin,
  DocumentReference? educateur,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adresse': adresse,
      'annotation': annotation,
      'disponiblite': disponiblite,
      'information': information,
      'options': options,
      'titre': titre,
      'image': image,
      'localisation': localisation,
      'date_debut': dateDebut,
      'date_fin': dateFin,
      'educateur': educateur,
    }.withoutNulls,
  );

  return firestoreData;
}

class MissionenCoursRecordDocumentEquality
    implements Equality<MissionenCoursRecord> {
  const MissionenCoursRecordDocumentEquality();

  @override
  bool equals(MissionenCoursRecord? e1, MissionenCoursRecord? e2) {
    return e1?.adresse == e2?.adresse &&
        e1?.annotation == e2?.annotation &&
        e1?.disponiblite == e2?.disponiblite &&
        e1?.information == e2?.information &&
        e1?.options == e2?.options &&
        e1?.titre == e2?.titre &&
        e1?.image == e2?.image &&
        e1?.localisation == e2?.localisation &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFin == e2?.dateFin &&
        e1?.educateur == e2?.educateur;
  }

  @override
  int hash(MissionenCoursRecord? e) => const ListEquality().hash([
        e?.adresse,
        e?.annotation,
        e?.disponiblite,
        e?.information,
        e?.options,
        e?.titre,
        e?.image,
        e?.localisation,
        e?.dateDebut,
        e?.dateFin,
        e?.educateur
      ]);

  @override
  bool isValidKey(Object? o) => o is MissionenCoursRecord;
}
