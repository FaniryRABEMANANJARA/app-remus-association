import '/flutter_flow/flutter_flow_util.dart';
import 'liste_maison_widget.dart' show ListeMaisonWidget;
import 'package:flutter/material.dart';

class ListeMaisonModel extends FlutterFlowModel<ListeMaisonWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
