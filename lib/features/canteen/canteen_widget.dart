import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'canteen_model.dart';
export 'canteen_model.dart';

class CanteenWidget extends StatefulWidget {
  const CanteenWidget({super.key});

  @override
  State<CanteenWidget> createState() => _CanteenWidgetState();
}

class _CanteenWidgetState extends State<CanteenWidget>
    with TickerProviderStateMixin {
  late CanteenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 175.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 175.ms,
          begin: const Offset(0.0, 25.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 175.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 175.ms,
          begin: const Offset(0.0, 25.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CanteenModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['containerOnPageLoadAnimation']!
          .controller
          .forward(from: 0.0);
    });
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
        appBar: AppBar(
          backgroundColor: const Color(0xFF404020),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Canteen',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Ubuntu',
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('carts');
                  },
                  child: badges.Badge(
                    badgeContent: Text(
                      valueOrDefault<String>(
                        FFAppState().numberOfItemsinCart.toString(),
                        'num',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Ubuntu',
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                    ),
                    showBadge: true,
                    shape: badges.BadgeShape.circle,
                    badgeColor: const Color(0xFF404020),
                    elevation: 4.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: const Icon(
                      Icons.shopping_cart_rounded,
                      color: Color(0xFFF5F5F5),
                      size: 28.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.5,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FlutterFlowChoiceChips(
                    options: const [
                      ChipData('Chats & Snacks'),
                      ChipData('Maggies'),
                      ChipData('Juices'),
                      ChipData('Hot Beverages'),
                      ChipData('Rolls'),
                      ChipData('Sandwiches'),
                      ChipData('Dosa\'s'),
                      ChipData('Omelette\'s'),
                      ChipData('Mojitho\'s'),
                      ChipData('Shakes'),
                      ChipData('Cooler\'s')
                    ],
                    onChanged: (val) => setState(
                        () => _model.choiceChipsValue = val?.firstOrNull),
                    selectedChipStyle: ChipStyle(
                      backgroundColor: const Color(0xFF404020),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Ubuntu',
                                color: const Color(0xFFF5F5F5),
                              ),
                      iconColor: Colors.white,
                      iconSize: 18.0,
                      elevation: 4.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    unselectedChipStyle: ChipStyle(
                      backgroundColor: FlutterFlowTheme.of(context).alternate,
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyMedium
                          .override(
                            fontFamily: 'Ubuntu',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      iconColor: FlutterFlowTheme.of(context).secondaryText,
                      iconSize: 18.0,
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    chipSpacing: 12.0,
                    rowSpacing: 12.0,
                    multiselect: false,
                    initialized: _model.choiceChipsValue != null,
                    alignment: WrapAlignment.start,
                    controller: _model.choiceChipsValueController ??=
                        FormFieldController<List<String>>(
                      ['Chats & Snacks'],
                    ),
                    wrapped: true,
                  ),
                ),
              ),
              Flexible(
                child: StreamBuilder<List<MenuItemsRecord>>(
                  stream: queryMenuItemsRecord(
                    queryBuilder: (menuItemsRecord) => menuItemsRecord
                        .where(
                          'on_sale',
                          isEqualTo: true,
                        )
                        .where(
                          'category',
                          isEqualTo: _model.choiceChipsValue,
                        ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return const Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitRipple(
                            color: Color(0xFF404020),
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<MenuItemsRecord> listViewMenuItemsRecordList =
                        snapshot.data!;
                    return ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewMenuItemsRecordList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewMenuItemsRecord =
                            listViewMenuItemsRecordList[listViewIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'itemdetails',
                                queryParameters: {
                                  'itemSelection': serializeParam(
                                    listViewMenuItemsRecord,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'itemSelection': listViewMenuItemsRecord,
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.leftToRight,
                                    duration: Duration(milliseconds: 100),
                                  ),
                                },
                              );
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: const Color(0xFFBDC3C3),
                                  ),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          listViewMenuItemsRecord.image,
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewMenuItemsRecord.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Ubuntu',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 8.0),
                                                child: Text(
                                                  formatNumber(
                                                    listViewMenuItemsRecord
                                                        .price,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: '₹ ',
                                                    format: '',
                                                    locale: '',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 5.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Icon(
                                        Icons.keyboard_arrow_right_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 35.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                              .animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation']!)
                              .animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation']!,
                                  hasBeenTriggered: hasContainerTriggered),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
