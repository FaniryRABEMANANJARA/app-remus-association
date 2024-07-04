import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'liste_annonce_widget.dart' show ListeAnnonceWidget;
import 'package:flutter/material.dart';

class ListeAnnonceModel extends FlutterFlowModel<ListeAnnonceWidget> {
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
