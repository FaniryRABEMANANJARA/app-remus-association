import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ajout_evaluation_educateur_widget.dart'
    show AjoutEvaluationEducateurWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjoutEvaluationEducateurModel
    extends FlutterFlowModel<AjoutEvaluationEducateurWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom_association widget.
  FocusNode? nomAssociationFocusNode;
  TextEditingController? nomAssociationController;
  String? Function(BuildContext, String?)? nomAssociationControllerValidator;
  // State field(s) for commentaire widget.
  FocusNode? commentaireFocusNode;
  TextEditingController? commentaireController;
  String? Function(BuildContext, String?)? commentaireControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteController;
  String? Function(BuildContext, String?)? noteControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomAssociationFocusNode?.dispose();
    nomAssociationController?.dispose();

    commentaireFocusNode?.dispose();
    commentaireController?.dispose();

    noteFocusNode?.dispose();
    noteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
