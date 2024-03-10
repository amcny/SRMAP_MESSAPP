import '/backend/backend.dart';
import '/components/count_controller/count_controller_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'itemdetails_model.dart';
export 'itemdetails_model.dart';

class ItemdetailsWidget extends StatefulWidget {
  const ItemdetailsWidget({
    super.key,
    required this.itemSelection,
  });

  final MenuItemsRecord? itemSelection;

  @override
  State<ItemdetailsWidget> createState() => _ItemdetailsWidgetState();
}

class _ItemdetailsWidgetState extends State<ItemdetailsWidget> {
  late ItemdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemdetailsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            buttonSize: 40.0,
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
            valueOrDefault<String>(
              widget.itemSelection?.name,
              'name',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 20.0,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 15.0, 8.0, 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.itemSelection!.image,
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 275.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 0.0, 8.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.itemSelection?.name,
                            'name',
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 0.0, 15.0),
                        child: Text(
                          formatNumber(
                            widget.itemSelection!.price,
                            formatType: FormatType.custom,
                            currency: '₹ ',
                            format: '',
                            locale: '',
                          ),
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 19.0,
                                  ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 2.0,
                      thickness: 3.0,
                      indent: 15.0,
                      endIndent: 15.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 20.0, 0.0, 20.0),
                        child: Text(
                          'Category : ${widget.itemSelection?.category}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.countControllerModel,
                      updateCallback: () => setState(() {}),
                      child: const CountControllerWidget(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().addToCart(CartItemTypeStruct(
                        menuItems: widget.itemSelection?.reference,
                        quantity:
                            _model.countControllerModel.countControllerValue,
                        itemName: widget.itemSelection?.name,
                        itemPrice: widget.itemSelection?.price,
                      ));
                    });
                    FFAppState().update(() {
                      FFAppState().cartSum = FFAppState().cartSum +
                          widget.itemSelection!.price *
                              (_model
                                  .countControllerModel.countControllerValue!);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Item added to cart',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        duration: const Duration(milliseconds: 500),
                        backgroundColor: const Color(0xFF6F6F42),
                      ),
                    );
                    FFAppState().update(() {
                      FFAppState().numberOfItemsinCart =
                          FFAppState().numberOfItemsinCart + 1;
                    });
                  },
                  text: 'Add to Cart',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 60.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF404020),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Ubuntu',
                          color: Colors.white,
                          fontSize: 21.0,
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
