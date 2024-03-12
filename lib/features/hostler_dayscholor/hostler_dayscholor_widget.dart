import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'hostler_dayscholor_model.dart';
export 'hostler_dayscholor_model.dart';

class HostlerDayscholorWidget extends StatefulWidget {
  const HostlerDayscholorWidget({super.key});

  @override
  State<HostlerDayscholorWidget> createState() =>
      _HostlerDayscholorWidgetState();
}

class _HostlerDayscholorWidgetState extends State<HostlerDayscholorWidget> {
  late HostlerDayscholorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostlerDayscholorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1707117835521.json',
                    width: 343.0,
                    height: 221.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: FlutterFlowDropDown<String>(
                  controller: _model.hosDayValueController ??=
                      FormFieldController<String>(
                    _model.hosDayValue ??= FFAppState().DayscholarHostler,
                  ),
                  options: const ['Day Scholar', 'Hostler'],
                  onChanged: (val) => setState(() => _model.hosDayValue = val),
                  width: 300.0,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Ubuntu',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                  hintText: 'Please select...',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isOverButton: true,
                  isSearchable: false,
                  isMultiSelect: false,
                ),
              ),
              if (_model.hosDayValue == 'Hostler')
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.vedaT2ValueController ??=
                        FormFieldController<String>(
                      _model.vedaT2Value ??= FFAppState().ChooseHostel,
                    ),
                    options: const ['Vedavati', 'T2'],
                    onChanged: (val) =>
                        setState(() => _model.vedaT2Value = val),
                    width: 300.0,
                    height: 50.0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Ubuntu',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                    hintText: 'Please select...',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      FFAppState().DayscholarHostler = _model.hosDayValue!;
                    });

                    context.goNamed('choosemess');

                    await HostlerDayscholarRecord.collection
                        .doc(currentUserEmail)
                        .set(createHostlerDayscholarRecordData(
                          hosDayscholar: _model.hosDayValue,
                          hostelName: _model.vedaT2Value,
                        ));
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 18.0, 24.0, 18.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF404020),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Ubuntu',
                          color: Colors.white,
                          fontSize: 23.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
