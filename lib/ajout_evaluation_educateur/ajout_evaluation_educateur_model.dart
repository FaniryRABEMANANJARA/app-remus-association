import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajout_evaluation_educateur_widget.dart'
    show AjoutEvaluationEducateurWidget;
import 'package:flutter/material.dart';

class AjoutEvaluationEducateurModel
    extends FlutterFlowModel<AjoutEvaluationEducateurWidget> {
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
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomAssociationFocusNode?.dispose();
    nomAssociationTextController?.dispose();

    commentaireFocusNode?.dispose();
    commentaireTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();

    navModel.dispose();
  }
}
