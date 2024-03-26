import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class NoteAssociationRecord extends FirestoreRecord {
  NoteAssociationRecord._(
    super.reference,
    super.data,
  ) {
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

  // "nom_educateur" field.
  String? _nomEducateur;
  String get nomEducateur => _nomEducateur ?? '';
  bool hasNomEducateur() => _nomEducateur != null;

  void _initializeFields() {
    _commentaire = snapshotData['commentaire'] as String?;
    _note = snapshotData['note'] as String?;
    _nomEducateur = snapshotData['nom_educateur'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('note_association');

  static Stream<NoteAssociationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoteAssociationRecord.fromSnapshot(s));

  static Future<NoteAssociationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoteAssociationRecord.fromSnapshot(s));

  static NoteAssociationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NoteAssociationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoteAssociationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoteAssociationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoteAssociationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoteAssociationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoteAssociationRecordData({
  String? commentaire,
  String? note,
  String? nomEducateur,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentaire': commentaire,
      'note': note,
      'nom_educateur': nomEducateur,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoteAssociationRecordDocumentEquality
    implements Equality<NoteAssociationRecord> {
  const NoteAssociationRecordDocumentEquality();

  @override
  bool equals(NoteAssociationRecord? e1, NoteAssociationRecord? e2) {
    return e1?.commentaire == e2?.commentaire &&
        e1?.note == e2?.note &&
        e1?.nomEducateur == e2?.nomEducateur;
  }

  @override
  int hash(NoteAssociationRecord? e) =>
      const ListEquality().hash([e?.commentaire, e?.note, e?.nomEducateur]);

  @override
  bool isValidKey(Object? o) => o is NoteAssociationRecord;
}
