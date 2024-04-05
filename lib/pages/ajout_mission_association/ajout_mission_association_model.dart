import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajout_mission_association_widget.dart'
    show AjoutMissionAssociationWidget;
import 'package:flutter/material.dart';

class AjoutMissionAssociationModel
    extends FlutterFlowModel<AjoutMissionAssociationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreController;
  String? Function(BuildContext, String?)? titreControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for localisation widget.
  FocusNode? localisationFocusNode;
  TextEditingController? localisationController;
  String? Function(BuildContext, String?)? localisationControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for annotation widget.
  FocusNode? annotationFocusNode;
  TextEditingController? annotationController;
  String? Function(BuildContext, String?)? annotationControllerValidator;
  // State field(s) for adresse widget.
  String? adresseValue;
  FormFieldController<String>? adresseValueController;
  // State field(s) for educateur widget.
  List<String>? educateurValue;
  FormFieldController<List<String>>? educateurValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for RadioButton_options widget.
  FormFieldController<String>? radioButtonOptionsValueController;
  // State field(s) for information widget.
  FocusNode? informationFocusNode;
  TextEditingController? informationController;
  String? Function(BuildContext, String?)? informationControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreController?.dispose();

    localisationFocusNode?.dispose();
    localisationController?.dispose();

    annotationFocusNode?.dispose();
    annotationController?.dispose();

    informationFocusNode?.dispose();
    informationController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
  String? get radioButtonOptionsValue =>
      radioButtonOptionsValueController?.value;
}
