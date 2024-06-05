import '/flutter_flow/flutter_flow_util.dart';
import 'nav_bar2_widget.dart' show NavBar2Widget;
import 'package:flutter/material.dart';

class NavBar2Model extends FlutterFlowModel<NavBar2Widget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
