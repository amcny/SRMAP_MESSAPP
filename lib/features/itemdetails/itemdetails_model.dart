import '/components/count_controller/count_controller_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'itemdetails_widget.dart' show ItemdetailsWidget;
import 'package:flutter/material.dart';

class ItemdetailsModel extends FlutterFlowModel<ItemdetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for count_controller component.
  late CountControllerModel countControllerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    countControllerModel = createModel(context, () => CountControllerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    countControllerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
