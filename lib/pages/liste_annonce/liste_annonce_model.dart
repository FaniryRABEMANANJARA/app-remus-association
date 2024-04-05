import '/flutter_flow/flutter_flow_util.dart';
import 'liste_annonce_widget.dart' show ListeAnnonceWidget;
import 'package:flutter/material.dart';

class ListeAnnonceModel extends FlutterFlowModel<ListeAnnonceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
