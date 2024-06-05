import '/flutter_flow/flutter_flow_util.dart';
import 'delete_page_widget.dart' show DeletePageWidget;
import 'package:flutter/material.dart';

class DeletePageModel extends FlutterFlowModel<DeletePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
