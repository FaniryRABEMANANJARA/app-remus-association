import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajout_maison_widget.dart' show AjoutMaisonWidget;
import 'package:flutter/material.dart';

class AjoutMaisonModel extends FlutterFlowModel<AjoutMaisonWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomTextController;
  String? Function(BuildContext, String?)? nomTextControllerValidator;
  // State field(s) for adresse widget.
  FocusNode? adresseFocusNode;
  TextEditingController? adresseTextController;
  String? Function(BuildContext, String?)? adresseTextControllerValidator;
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomFocusNode?.dispose();
    nomTextController?.dispose();

    adresseFocusNode?.dispose();
    adresseTextController?.dispose();

    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    navModel.dispose();
  }
}
