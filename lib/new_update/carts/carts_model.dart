import '/flutter_flow/flutter_flow_util.dart';
import 'carts_widget.dart' show CartsWidget;
import 'package:flutter/material.dart';

class CartsModel extends FlutterFlowModel<CartsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Razorpay Payment] action in Container widget.
  String? razorpayPaymentId;

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
