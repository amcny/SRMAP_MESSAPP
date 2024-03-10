import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'canteen_walkthrough_model.dart';
export 'canteen_walkthrough_model.dart';

class CanteenWalkthroughWidget extends StatefulWidget {
  const CanteenWalkthroughWidget({super.key});

  @override
  State<CanteenWalkthroughWidget> createState() =>
      _CanteenWalkthroughWidgetState();
}

class _CanteenWalkthroughWidgetState extends State<CanteenWalkthroughWidget> {
  late CanteenWalkthroughModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CanteenWalkthroughModel());
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
      constraints: const BoxConstraints(
        maxHeight: 300.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Align(
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Text(
          'Discover diverse menu options categorized by meal type and cuisine.',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Ubuntu',
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
              ),
        ),
      ),
    );
  }
}
