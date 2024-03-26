import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MissionaCombleRecord extends FirestoreRecord {
  MissionaCombleRecord._(
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

  // "fullname_educateur" field.
  String? _fullnameEducateur;
  String get fullnameEducateur => _fullnameEducateur ?? '';
  bool hasFullnameEducateur() => _fullnameEducateur != null;

  // "evaluation" field.
  String? _evaluation;
  String get evaluation => _evaluation ?? '';
  bool hasEvaluation() => _evaluation != null;

  // "resume_exp" field.
  String? _resumeExp;
  String get resumeExp => _resumeExp ?? '';
  bool hasResumeExp() => _resumeExp != null;

  // "resume_compet" field.
  String? _resumeCompet;
  String get resumeCompet => _resumeCompet ?? '';
  bool hasResumeCompet() => _resumeCompet != null;

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
    _fullnameEducateur = snapshotData['fullname_educateur'] as String?;
    _evaluation = snapshotData['evaluation'] as String?;
    _resumeExp = snapshotData['resume_exp'] as String?;
    _resumeCompet = snapshotData['resume_compet'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('missionaComble');

  static Stream<MissionaCombleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MissionaCombleRecord.fromSnapshot(s));

  static Future<MissionaCombleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MissionaCombleRecord.fromSnapshot(s));

  static MissionaCombleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MissionaCombleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MissionaCombleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MissionaCombleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MissionaCombleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MissionaCombleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMissionaCombleRecordData({
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
  String? fullnameEducateur,
  String? evaluation,
  String? resumeExp,
  String? resumeCompet,
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
      'fullname_educateur': fullnameEducateur,
      'evaluation': evaluation,
      'resume_exp': resumeExp,
      'resume_compet': resumeCompet,
    }.withoutNulls,
  );

  return firestoreData;
}

class MissionaCombleRecordDocumentEquality
    implements Equality<MissionaCombleRecord> {
  const MissionaCombleRecordDocumentEquality();

  @override
  bool equals(MissionaCombleRecord? e1, MissionaCombleRecord? e2) {
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
        e1?.fullnameEducateur == e2?.fullnameEducateur &&
        e1?.evaluation == e2?.evaluation &&
        e1?.resumeExp == e2?.resumeExp &&
        e1?.resumeCompet == e2?.resumeCompet;
  }

  @override
  int hash(MissionaCombleRecord? e) => const ListEquality().hash([
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
        e?.fullnameEducateur,
        e?.evaluation,
        e?.resumeExp,
        e?.resumeCompet
      ]);

  @override
  bool isValidKey(Object? o) => o is MissionaCombleRecord;
}
