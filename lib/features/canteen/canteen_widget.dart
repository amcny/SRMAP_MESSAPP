import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CanteenModel());

    _model.categoriesController = TabController(
      vsync: this,
      length: 11,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
          title: Text(
            'Canteen',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 25.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
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
                            FFAppState().numberOfItemsinCart.toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Ubuntu',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                          ),
                          showBadge: true,
                          shape: badges.BadgeShape.circle,
                          badgeColor: const Color(0xFF404020),
                          elevation: 4.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          position: badges.BadgePosition.topEnd(),
                          animationType: badges.BadgeAnimationType.scale,
                          toAnimate: true,
                          child: const Icon(
                            Icons.shopping_cart_rounded,
                            color: Color(0xFF404020),
                            size: 28.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(-1.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: false,
                          isScrollable: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Rubik',
                                    fontSize: 18.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor: const Color(0xFF404020),
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          unselectedBackgroundColor: const Color(0xFF404020),
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderWidth: 1.0,
                          borderRadius: 20.0,
                          elevation: 0.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          padding: const EdgeInsets.all(4.0),
                          tabs: const [
                            Tab(
                              text: '   Chats & Snacks  ',
                            ),
                            Tab(
                              text: '   Maggies    ',
                            ),
                            Tab(
                              text: '  Juices   ',
                            ),
                            Tab(
                              text: '   Hot Beverages   ',
                            ),
                            Tab(
                              text: '  Rolls    ',
                            ),
                            Tab(
                              text: '  Sandwiches   ',
                            ),
                            Tab(
                              text: '   Dosa\'s   ',
                            ),
                            Tab(
                              text: '   Omelette\'s   ',
                            ),
                            Tab(
                              text: '   Mojitho\'s   ',
                            ),
                            Tab(
                              text: '   Shakes   ',
                            ),
                            Tab(
                              text: '   Cooler\'s    ',
                            ),
                          ],
                          controller: _model.categoriesController,
                          onTap: (i) async {
                            [
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {},
                              () async {}
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.categoriesController,
                          children: [
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            KeepAliveWidgetWrapper(
                              builder: (context) =>
                                  StreamBuilder<List<MenuItemsRecord>>(
                                stream: queryMenuItemsRecord(
                                  queryBuilder: (menuItemsRecord) =>
                                      menuItemsRecord
                                          .where(
                                            'on_sale',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'categoryID',
                                            isEqualTo:
                                                _model.categoriesCurrentIndex,
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
                                  List<MenuItemsRecord>
                                      listViewMenuItemsRecordList =
                                      snapshot.data!;
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 20.0),
                                    primary: false,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewMenuItemsRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewMenuItemsRecord =
                                          listViewMenuItemsRecordList[
                                              listViewIndex];
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
                                                'itemSelection':
                                                    listViewMenuItemsRecord,
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color: const Color(0xFFBDC3C3),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 5.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listViewMenuItemsRecord
                                                          .image,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Text(
                                                        listViewMenuItemsRecord
                                                            .name,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Ubuntu',
                                                              fontSize: 18.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewMenuItemsRecord
                                                                .price,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '₹ ',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .keyboard_arrow_right_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 35.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
