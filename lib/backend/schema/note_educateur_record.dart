import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NoteEducateurRecord extends FirestoreRecord {
  NoteEducateurRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentaire" field.
  String? _commentaire;
  String get commentaire => _commentaire ?? '';
  bool hasCommentaire() => _commentaire != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "nom_association" field.
  String? _nomAssociation;
  String get nomAssociation => _nomAssociation ?? '';
  bool hasNomAssociation() => _nomAssociation != null;

  void _initializeFields() {
    _commentaire = snapshotData['commentaire'] as String?;
    _note = snapshotData['note'] as String?;
    _nomAssociation = snapshotData['nom_association'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('note_educateur');

  static Stream<NoteEducateurRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoteEducateurRecord.fromSnapshot(s));

  static Future<NoteEducateurRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoteEducateurRecord.fromSnapshot(s));

  static NoteEducateurRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoteEducateurRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoteEducateurRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoteEducateurRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoteEducateurRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoteEducateurRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoteEducateurRecordData({
  String? commentaire,
  String? note,
  String? nomAssociation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentaire': commentaire,
      'note': note,
      'nom_association': nomAssociation,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoteEducateurRecordDocumentEquality
    implements Equality<NoteEducateurRecord> {
  const NoteEducateurRecordDocumentEquality();

  @override
  bool equals(NoteEducateurRecord? e1, NoteEducateurRecord? e2) {
    return e1?.commentaire == e2?.commentaire &&
        e1?.note == e2?.note &&
        e1?.nomAssociation == e2?.nomAssociation;
  }

  @override
  int hash(NoteEducateurRecord? e) =>
      const ListEquality().hash([e?.commentaire, e?.note, e?.nomAssociation]);

  @override
  bool isValidKey(Object? o) => o is NoteEducateurRecord;
}
