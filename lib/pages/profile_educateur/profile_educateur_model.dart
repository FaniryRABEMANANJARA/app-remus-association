import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_educateur_widget.dart' show ProfileEducateurWidget;
import 'package:flutter/material.dart';

class ProfileEducateurModel extends FlutterFlowModel<ProfileEducateurWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    navModel.dispose();
  }
}
