import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaisonRecord extends FirestoreRecord {
  MaisonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "image_maison" field.
  String? _imageMaison;
  String get imageMaison => _imageMaison ?? '';
  bool hasImageMaison() => _imageMaison != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "adresse" field.
  String? _adresse;
  String get adresse => _adresse ?? '';
  bool hasAdresse() => _adresse != null;

  // "ressource" field.
  String? _ressource;
  String get ressource => _ressource ?? '';
  bool hasRessource() => _ressource != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _imageMaison = snapshotData['image_maison'] as String?;
    _description = snapshotData['description'] as String?;
    _adresse = snapshotData['adresse'] as String?;
    _ressource = snapshotData['ressource'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _age = snapshotData['age'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maison');

  static Stream<MaisonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaisonRecord.fromSnapshot(s));

  static Future<MaisonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaisonRecord.fromSnapshot(s));

  static MaisonRecord fromSnapshot(DocumentSnapshot snapshot) => MaisonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaisonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaisonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaisonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaisonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaisonRecordData({
  String? nom,
  String? imageMaison,
  String? description,
  String? adresse,
  String? ressource,
  String? nombre,
  String? age,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'image_maison': imageMaison,
      'description': description,
      'adresse': adresse,
      'ressource': ressource,
      'nombre': nombre,
      'age': age,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaisonRecordDocumentEquality implements Equality<MaisonRecord> {
  const MaisonRecordDocumentEquality();

  @override
  bool equals(MaisonRecord? e1, MaisonRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.imageMaison == e2?.imageMaison &&
        e1?.description == e2?.description &&
        e1?.adresse == e2?.adresse &&
        e1?.ressource == e2?.ressource &&
        e1?.nombre == e2?.nombre &&
        e1?.age == e2?.age;
  }

  @override
  int hash(MaisonRecord? e) => const ListEquality().hash([
        e?.nom,
        e?.imageMaison,
        e?.description,
        e?.adresse,
        e?.ressource,
        e?.nombre,
        e?.age
      ]);

  @override
  bool isValidKey(Object? o) => o is MaisonRecord;
}
