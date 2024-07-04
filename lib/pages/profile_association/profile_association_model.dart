import '/backend/backend.dart';
import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_association_widget.dart' show ProfileAssociationWidget;
import 'package:flutter/material.dart';

class ProfileAssociationModel
    extends FlutterFlowModel<ProfileAssociationWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in Text widget.
  UsersRecord? email;
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
