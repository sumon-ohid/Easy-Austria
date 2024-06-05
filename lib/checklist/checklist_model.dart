import '/flutter_flow/flutter_flow_util.dart';
import 'checklist_widget.dart' show ChecklistWidget;
import 'package:flutter/material.dart';

class ChecklistModel extends FlutterFlowModel<ChecklistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
