import '/backend/backend.dart';
import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_missions_educateur_a_comblee_widget.dart'
    show ListeMissionsEducateurACombleeWidget;
import 'package:flutter/material.dart';

class ListeMissionsEducateurACombleeModel
    extends FlutterFlowModel<ListeMissionsEducateurACombleeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<MissionaCombleRecord> simpleSearchResults = [];
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    navModel.dispose();
  }
}
