import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'ajout_mission_association_widget.dart'
    show AjoutMissionAssociationWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjoutMissionAssociationModel
    extends FlutterFlowModel<AjoutMissionAssociationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreController;
  String? Function(BuildContext, String?)? titreControllerValidator;
  String? _titreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for longitude widget.
  FocusNode? longitudeFocusNode;
  TextEditingController? longitudeController;
  String? Function(BuildContext, String?)? longitudeControllerValidator;
  // State field(s) for latitude widget.
  FocusNode? latitudeFocusNode;
  TextEditingController? latitudeController;
  String? Function(BuildContext, String?)? latitudeControllerValidator;
  // State field(s) for annotation widget.
  FocusNode? annotationFocusNode;
  TextEditingController? annotationController;
  String? Function(BuildContext, String?)? annotationControllerValidator;
  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseController;
  String? Function(BuildContext, String?)? adresseControllerValidator;
  String? _adresseControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for disponibilite widget.
  FocusNode? disponibiliteFocusNode;
  TextEditingController? disponibiliteController;
  String? Function(BuildContext, String?)? disponibiliteControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for information widget.
  FocusNode? informationFocusNode;
  TextEditingController? informationController;
  String? Function(BuildContext, String?)? informationControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    titreControllerValidator = _titreControllerValidator;
    adresseControllerValidator = _adresseControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreController?.dispose();

    longitudeFocusNode?.dispose();
    longitudeController?.dispose();

    latitudeFocusNode?.dispose();
    latitudeController?.dispose();

    annotationFocusNode?.dispose();
    annotationController?.dispose();

    adresseFocusNode?.dispose();
    adresseController?.dispose();

    disponibiliteFocusNode?.dispose();
    disponibiliteController?.dispose();

    informationFocusNode?.dispose();
    informationController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
