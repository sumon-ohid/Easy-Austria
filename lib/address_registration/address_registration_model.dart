import '/flutter_flow/flutter_flow_util.dart';
import 'address_registration_widget.dart' show AddressRegistrationWidget;
import 'package:flutter/material.dart';

class AddressRegistrationModel
    extends FlutterFlowModel<AddressRegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
