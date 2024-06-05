import '/flutter_flow/flutter_flow_util.dart';
import 'profile_options_widget.dart' show ProfileOptionsWidget;
import 'package:flutter/material.dart';

class ProfileOptionsModel extends FlutterFlowModel<ProfileOptionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
