import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'modification_profil_widget.dart' show ModificationProfilWidget;
import 'package:flutter/material.dart';

class ModificationProfilModel
    extends FlutterFlowModel<ModificationProfilWidget> {
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
  // State field(s) for NumSiret widget.
  FocusNode? numSiretFocusNode;
  TextEditingController? numSiretTextController;
  String? Function(BuildContext, String?)? numSiretTextControllerValidator;
  // State field(s) for sexe widget.
  String? sexeValue;
  FormFieldController<String>? sexeValueController;
  // State field(s) for vehicule widget.
  String? vehiculeValue;
  FormFieldController<String>? vehiculeValueController;
  // State field(s) for auto_entrepreneur widget.
  String? autoEntrepreneurValue;
  FormFieldController<String>? autoEntrepreneurValueController;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

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

    numSiretFocusNode?.dispose();
    numSiretTextController?.dispose();

    navModel.dispose();
  }
}
