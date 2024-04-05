import '/flutter_flow/flutter_flow_util.dart';
import 'ajout_evaluation_widget.dart' show AjoutEvaluationWidget;
import 'package:flutter/material.dart';

class AjoutEvaluationModel extends FlutterFlowModel<AjoutEvaluationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom_educateur widget.
  FocusNode? nomEducateurFocusNode;
  TextEditingController? nomEducateurController;
  String? Function(BuildContext, String?)? nomEducateurControllerValidator;
  // State field(s) for commentaire widget.
  FocusNode? commentaireFocusNode;
  TextEditingController? commentaireController;
  String? Function(BuildContext, String?)? commentaireControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteController;
  String? Function(BuildContext, String?)? noteControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomEducateurFocusNode?.dispose();
    nomEducateurController?.dispose();

    commentaireFocusNode?.dispose();
    commentaireController?.dispose();

    noteFocusNode?.dispose();
    noteController?.dispose();
  }
}
