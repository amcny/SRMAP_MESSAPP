import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'hostler_dayscholar_widget.dart' show HostlerDayscholarWidget;
import 'package:flutter/material.dart';

class HostlerDayscholarModel extends FlutterFlowModel<HostlerDayscholarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for hos-day widget.
  String? hosDayValue;
  FormFieldController<String>? hosDayValueController;
  // State field(s) for veda-T2 widget.
  String? vedaT2Value;
  FormFieldController<String>? vedaT2ValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
