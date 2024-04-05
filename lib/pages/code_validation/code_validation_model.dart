import '/flutter_flow/flutter_flow_util.dart';
import 'code_validation_widget.dart' show CodeValidationWidget;
import 'package:flutter/material.dart';

class CodeValidationModel extends FlutterFlowModel<CodeValidationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeController;
  String? Function(BuildContext, String?)? codeControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeFocusNode?.dispose();
    codeController?.dispose();
  }
}
