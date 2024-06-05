import '/flutter_flow/flutter_flow_util.dart';
import 'job_search_widget.dart' show JobSearchWidget;
import 'package:flutter/material.dart';

class JobSearchModel extends FlutterFlowModel<JobSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
