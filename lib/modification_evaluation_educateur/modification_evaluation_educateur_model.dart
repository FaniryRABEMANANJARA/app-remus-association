import '/flutter_flow/flutter_flow_util.dart';
import 'modification_evaluation_educateur_widget.dart'
    show ModificationEvaluationEducateurWidget;
import 'package:flutter/material.dart';

class ModificationEvaluationEducateurModel
    extends FlutterFlowModel<ModificationEvaluationEducateurWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom_association widget.
  FocusNode? nomAssociationFocusNode;
  TextEditingController? nomAssociationTextController;
  String? Function(BuildContext, String?)?
      nomAssociationTextControllerValidator;
  // State field(s) for commentaire widget.
  FocusNode? commentaireFocusNode;
  TextEditingController? commentaireTextController;
  String? Function(BuildContext, String?)? commentaireTextControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomAssociationFocusNode?.dispose();
    nomAssociationTextController?.dispose();

    commentaireFocusNode?.dispose();
    commentaireTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
