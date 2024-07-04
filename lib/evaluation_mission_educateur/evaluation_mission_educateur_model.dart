import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'evaluation_mission_educateur_widget.dart'
    show EvaluationMissionEducateurWidget;
import 'package:flutter/material.dart';

class EvaluationMissionEducateurModel
    extends FlutterFlowModel<EvaluationMissionEducateurWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for evaluations widget.
  FocusNode? evaluationsFocusNode;
  TextEditingController? evaluationsTextController;
  String? Function(BuildContext, String?)? evaluationsTextControllerValidator;
  // State field(s) for resume_exp widget.
  FocusNode? resumeExpFocusNode;
  TextEditingController? resumeExpTextController;
  String? Function(BuildContext, String?)? resumeExpTextControllerValidator;
  // State field(s) for resume_compet widget.
  FocusNode? resumeCompetFocusNode;
  TextEditingController? resumeCompetTextController;
  String? Function(BuildContext, String?)? resumeCompetTextControllerValidator;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    evaluationsFocusNode?.dispose();
    evaluationsTextController?.dispose();

    resumeExpFocusNode?.dispose();
    resumeExpTextController?.dispose();

    resumeCompetFocusNode?.dispose();
    resumeCompetTextController?.dispose();

    navModel.dispose();
  }
}
