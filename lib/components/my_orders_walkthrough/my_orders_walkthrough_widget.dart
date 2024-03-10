import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'my_orders_walkthrough_model.dart';
export 'my_orders_walkthrough_model.dart';

class MyOrdersWalkthroughWidget extends StatefulWidget {
  const MyOrdersWalkthroughWidget({super.key});

  @override
  State<MyOrdersWalkthroughWidget> createState() =>
      _MyOrdersWalkthroughWidgetState();
}

class _MyOrdersWalkthroughWidgetState extends State<MyOrdersWalkthroughWidget> {
  late MyOrdersWalkthroughModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyOrdersWalkthroughModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
          child: Text(
            'Review order summary with items and total cost.\nMonitor order status in real-time.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Ubuntu',
                  fontSize: 18.0,
                ),
          ),
        ),
      ),
    );
  }
}
