import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajout_evaluation_widget.dart' show AjoutEvaluationWidget;
import 'package:flutter/material.dart';

class AjoutEvaluationModel extends FlutterFlowModel<AjoutEvaluationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom_educateur widget.
  FocusNode? nomEducateurFocusNode;
  TextEditingController? nomEducateurTextController;
  String? Function(BuildContext, String?)? nomEducateurTextControllerValidator;
  // State field(s) for commentaire widget.
  FocusNode? commentaireFocusNode;
  TextEditingController? commentaireTextController;
  String? Function(BuildContext, String?)? commentaireTextControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomEducateurFocusNode?.dispose();
    nomEducateurTextController?.dispose();

    commentaireFocusNode?.dispose();
    commentaireTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();

    navModel.dispose();
  }
}
