import '/flutter_flow/flutter_flow_util.dart';
import 'support_form_widget.dart' show SupportFormWidget;
import 'package:flutter/material.dart';

class SupportFormModel extends FlutterFlowModel<SupportFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for subject widget.
  FocusNode? subjectFocusNode;
  TextEditingController? subjectTextController;
  String? Function(BuildContext, String?)? subjectTextControllerValidator;
  // State field(s) for ticketBody widget.
  FocusNode? ticketBodyFocusNode;
  TextEditingController? ticketBodyTextController;
  String? Function(BuildContext, String?)? ticketBodyTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    subjectFocusNode?.dispose();
    subjectTextController?.dispose();

    ticketBodyFocusNode?.dispose();
    ticketBodyTextController?.dispose();
  }
}
