import '/flutter_flow/flutter_flow_util.dart';
import 'find_apartments_widget.dart' show FindApartmentsWidget;
import 'package:flutter/material.dart';

class FindApartmentsModel extends FlutterFlowModel<FindApartmentsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
