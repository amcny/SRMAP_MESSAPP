import '/flutter_flow/flutter_flow_util.dart';
import 'canteen_widget.dart' show CanteenWidget;
import 'package:flutter/material.dart';

class CanteenModel extends FlutterFlowModel<CanteenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Categories widget.
  TabController? categoriesController;
  int get categoriesCurrentIndex =>
      categoriesController != null ? categoriesController!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    categoriesController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
