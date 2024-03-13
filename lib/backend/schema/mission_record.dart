import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MissionRecord extends FirestoreRecord {
  MissionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "longitude" field.
  String? _longitude;
  String get longitude => _longitude ?? '';
  bool hasLongitude() => _longitude != null;

  // "latitude" field.
  String? _latitude;
  String get latitude => _latitude ?? '';
  bool hasLatitude() => _latitude != null;

  // "date_debut" field.
  String? _dateDebut;
  String get dateDebut => _dateDebut ?? '';
  bool hasDateDebut() => _dateDebut != null;

  // "date_fin" field.
  String? _dateFin;
  String get dateFin => _dateFin ?? '';
  bool hasDateFin() => _dateFin != null;

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _adresse = snapshotData['adresse'] as String?;
    _annotation = snapshotData['annotation'] as String?;
    _disponiblite = snapshotData['disponiblite'] as String?;
    _information = snapshotData['information'] as String?;
    _options = snapshotData['options'] as String?;
    _longitude = snapshotData['longitude'] as String?;
    _latitude = snapshotData['latitude'] as String?;
    _dateDebut = snapshotData['date_debut'] as String?;
    _dateFin = snapshotData['date_fin'] as String?;
    _titre = snapshotData['titre'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mission');

  static Stream<MissionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MissionRecord.fromSnapshot(s));

  static Future<MissionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MissionRecord.fromSnapshot(s));

  static MissionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MissionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MissionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MissionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MissionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MissionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMissionRecordData({
  String? adresse,
  String? annotation,
  String? disponiblite,
  String? information,
  String? options,
  String? longitude,
  String? latitude,
  String? dateDebut,
  String? dateFin,
  String? titre,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adresse': adresse,
      'annotation': annotation,
      'disponiblite': disponiblite,
      'information': information,
      'options': options,
      'longitude': longitude,
      'latitude': latitude,
      'date_debut': dateDebut,
      'date_fin': dateFin,
      'titre': titre,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class MissionRecordDocumentEquality implements Equality<MissionRecord> {
  const MissionRecordDocumentEquality();

  @override
  bool equals(MissionRecord? e1, MissionRecord? e2) {
    return e1?.adresse == e2?.adresse &&
        e1?.annotation == e2?.annotation &&
        e1?.disponiblite == e2?.disponiblite &&
        e1?.information == e2?.information &&
        e1?.options == e2?.options &&
        e1?.longitude == e2?.longitude &&
        e1?.latitude == e2?.latitude &&
        e1?.dateDebut == e2?.dateDebut &&
        e1?.dateFin == e2?.dateFin &&
        e1?.titre == e2?.titre &&
        e1?.image == e2?.image;
  }

  @override
  int hash(MissionRecord? e) => const ListEquality().hash([
        e?.adresse,
        e?.annotation,
        e?.disponiblite,
        e?.information,
        e?.options,
        e?.longitude,
        e?.latitude,
        e?.dateDebut,
        e?.dateFin,
        e?.titre,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is MissionRecord;
}
