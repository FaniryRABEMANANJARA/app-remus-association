import '/components/nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ajout_mission_association_widget.dart'
    show AjoutMissionAssociationWidget;
import 'package:flutter/material.dart';

class AjoutMissionAssociationModel
    extends FlutterFlowModel<AjoutMissionAssociationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for localisation widget.
  FocusNode? localisationFocusNode;
  TextEditingController? localisationTextController;
  String? Function(BuildContext, String?)? localisationTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for annotation widget.
  FocusNode? annotationFocusNode;
  TextEditingController? annotationTextController;
  String? Function(BuildContext, String?)? annotationTextControllerValidator;
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
  TextEditingController? informationTextController;
  String? Function(BuildContext, String?)? informationTextControllerValidator;
  // Model for Nav component.
  late NavModel navModel;

  @override
  void initState(BuildContext context) {
    navModel = createModel(context, () => NavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreTextController?.dispose();

    localisationFocusNode?.dispose();
    localisationTextController?.dispose();

    annotationFocusNode?.dispose();
    annotationTextController?.dispose();

    informationFocusNode?.dispose();
    informationTextController?.dispose();

    navModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
  String? get radioButtonOptionsValue =>
      radioButtonOptionsValueController?.value;
}
