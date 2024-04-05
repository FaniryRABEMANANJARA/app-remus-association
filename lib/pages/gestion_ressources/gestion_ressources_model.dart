import '/flutter_flow/flutter_flow_util.dart';
import 'gestion_ressources_widget.dart' show GestionRessourcesWidget;
import 'package:flutter/material.dart';

class GestionRessourcesModel extends FlutterFlowModel<GestionRessourcesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
