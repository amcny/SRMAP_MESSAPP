import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'count_controller_model.dart';
export 'count_controller_model.dart';

class CountControllerWidget extends StatefulWidget {
  const CountControllerWidget({super.key});

  @override
  State<CountControllerWidget> createState() => _CountControllerWidgetState();
}

class _CountControllerWidgetState extends State<CountControllerWidget> {
  late CountControllerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CountControllerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 25.0),
      child: Container(
        width: 150.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
        ),
        child: FlutterFlowCountController(
          decrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.minus,
            color: enabled
                ? FlutterFlowTheme.of(context).secondaryText
                : FlutterFlowTheme.of(context).alternate,
            size: 25.0,
          ),
          incrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.plus,
            color: enabled
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            size: 25.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Ubuntu',
                  fontSize: 23.0,
                ),
          ),
          count: _model.countControllerValue ??= 1,
          updateCount: (count) =>
              setState(() => _model.countControllerValue = count),
          stepSize: 1,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        ),
      ),
    );
  }
}
