import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_maison_widget.dart' show ListeMaisonWidget;
import 'package:flutter/material.dart';

class ListeMaisonModel extends FlutterFlowModel<ListeMaisonWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navModel.dispose();
  }
}
