import '/flutter_flow/flutter_flow_util.dart';
import 'motdepasseoublie_widget.dart' show MotdepasseoublieWidget;
import 'package:flutter/material.dart';

class MotdepasseoublieModel extends FlutterFlowModel<MotdepasseoublieWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
