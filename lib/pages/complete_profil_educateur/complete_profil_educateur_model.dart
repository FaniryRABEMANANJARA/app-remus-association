import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'complete_profil_educateur_widget.dart'
    show CompleteProfilEducateurWidget;
import 'package:flutter/material.dart';

class CompleteProfilEducateurModel
    extends FlutterFlowModel<CompleteProfilEducateurWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomTextController;
  String? Function(BuildContext, String?)? prenomTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for phone_number widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for information_perso widget.
  FocusNode? informationPersoFocusNode;
  TextEditingController? informationPersoTextController;
  String? Function(BuildContext, String?)?
      informationPersoTextControllerValidator;
  // State field(s) for information_med widget.
  FocusNode? informationMedFocusNode;
  TextEditingController? informationMedTextController;
  String? Function(BuildContext, String?)?
      informationMedTextControllerValidator;
  // State field(s) for taux_horaire widget.
  String? tauxHoraireValue;
  FormFieldController<String>? tauxHoraireValueController;
  // State field(s) for numdeSIRET widget.
  FocusNode? numdeSIRETFocusNode;
  TextEditingController? numdeSIRETTextController;
  String? Function(BuildContext, String?)? numdeSIRETTextControllerValidator;
  // State field(s) for sexe widget.
  String? sexeValue;
  FormFieldController<String>? sexeValueController;
  // State field(s) for vehicule widget.
  String? vehiculeValue;
  FormFieldController<String>? vehiculeValueController;
  // State field(s) for auto_entrepreneur widget.
  String? autoEntrepreneurValue;
  FormFieldController<String>? autoEntrepreneurValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    prenomFocusNode?.dispose();
    prenomTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    informationPersoFocusNode?.dispose();
    informationPersoTextController?.dispose();

    informationMedFocusNode?.dispose();
    informationMedTextController?.dispose();

    numdeSIRETFocusNode?.dispose();
    numdeSIRETTextController?.dispose();
  }
}
