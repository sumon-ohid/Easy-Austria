import '/flutter_flow/flutter_flow_util.dart';
import 'learn_german_widget.dart' show LearnGermanWidget;
import 'package:flutter/material.dart';

class LearnGermanModel extends FlutterFlowModel<LearnGermanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
