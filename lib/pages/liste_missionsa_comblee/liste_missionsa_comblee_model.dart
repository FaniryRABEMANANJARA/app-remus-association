import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_missionsa_comblee_widget.dart' show ListeMissionsaCombleeWidget;
import 'package:flutter/material.dart';

class ListeMissionsaCombleeModel
    extends FlutterFlowModel<ListeMissionsaCombleeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<MissionaCombleRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
  }
}
