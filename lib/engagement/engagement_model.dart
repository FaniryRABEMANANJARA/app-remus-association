import '/flutter_flow/flutter_flow_util.dart';
import 'engagement_widget.dart' show EngagementWidget;
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class EngagementModel extends FlutterFlowModel<EngagementWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  DateTime? datePicked;
  // State field(s) for Signature widget.
  SignatureController? signatureController;
  String uploadedSignatureUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    signatureController?.dispose();
  }
}
