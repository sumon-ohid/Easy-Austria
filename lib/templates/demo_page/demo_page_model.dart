import '/components/background/background_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'demo_page_widget.dart' show DemoPageWidget;
import 'package:flutter/material.dart';

class DemoPageModel extends FlutterFlowModel<DemoPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Background component.
  late BackgroundModel backgroundModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backgroundModel.dispose();
  }
}
