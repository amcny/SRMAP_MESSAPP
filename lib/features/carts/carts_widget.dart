import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/razorpay/razorpay_payment_sheet.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'carts_model.dart';
export 'carts_model.dart';

class CartsWidget extends StatefulWidget {
  const CartsWidget({super.key});

  @override
  State<CartsWidget> createState() => _CartsWidgetState();
}

class _CartsWidgetState extends State<CartsWidget>
    with TickerProviderStateMixin {
  late CartsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartsModel());
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
        backgroundColor: const Color(0xFFF1F5F8),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF1F5F8),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'My Cart',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFF0F1113),
                  fontSize: 32.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (FFAppState().cartSum != 0.00)
              Expanded(
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 160.0),
                      child: Container(
                        height: double.infinity,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Below are the items in your cart.',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: const Color(0xFF57636C),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      final cartItem =
                                          FFAppState().cart.toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: cartItem.length,
                                        itemBuilder: (context, cartItemIndex) {
                                          final cartItemItem =
                                              cartItem[cartItemIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 0.0),
                                            child:
                                                StreamBuilder<MenuItemsRecord>(
                                              stream:
                                                  MenuItemsRecord.getDocument(
                                                      cartItemItem.menuItems!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return const Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitRipple(
                                                        color:
                                                            Color(0xFF404020),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final containerMenuItemsRecord =
                                                    snapshot.data!;
                                                return Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x320E151B),
                                                        offset:
                                                            Offset(0.0, 1.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 8.0,
                                                                8.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Hero(
                                                          tag:
                                                              containerMenuItemsRecord
                                                                  .image,
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child:
                                                                Image.network(
                                                              containerMenuItemsRecord
                                                                  .image,
                                                              width: 90.0,
                                                              height: 90.0,
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    containerMenuItemsRecord
                                                                        .name,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF0F1113),
                                                                          fontSize:
                                                                              19.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  formatNumber(
                                                                    containerMenuItemsRecord
                                                                            .price *
                                                                        cartItemItem
                                                                            .quantity,
                                                                    formatType:
                                                                        FormatType
                                                                            .custom,
                                                                    currency:
                                                                        '₹ ',
                                                                    format: '',
                                                                    locale: '',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Plus Jakarta Sans',
                                                                        color: const Color(
                                                                            0xFF57636C),
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Quantity : ${cartItemItem.quantity.toString()}',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Plus Jakarta Sans',
                                                                          color:
                                                                              const Color(0xFF57636C),
                                                                          fontSize:
                                                                              15.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      13.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: const Icon(
                                                              Icons
                                                                  .delete_outline_rounded,
                                                              color: Color(
                                                                  0xFFDE4C62),
                                                              size: 28.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              setState(() {
                                                                FFAppState()
                                                                    .removeAtIndexFromCart(
                                                                        cartItemIndex);
                                                              });
                                                              setState(() {
                                                                FFAppState()
                                                                    .cartSum = FFAppState()
                                                                        .cartSum +
                                                                    valueOrDefault<
                                                                        double>(
                                                                      containerMenuItemsRecord
                                                                              .price *
                                                                          cartItemItem
                                                                              .quantity *
                                                                          -1,
                                                                      1234.0,
                                                                    );
                                                              });
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .numberOfItemsinCart =
                                                                    FFAppState()
                                                                            .numberOfItemsinCart +
                                                                        -1;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 4.0, 24.0, 12.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Sub Total',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF57636C),
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 36.0,
                                              icon: const Icon(
                                                Icons.info_outlined,
                                                color: Color(0xFF57636C),
                                                size: 18.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          formatNumber(
                                            FFAppState().cartSum,
                                            formatType: FormatType.custom,
                                            currency: '₹ ',
                                            format: '',
                                            locale: '',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFF0F1113),
                                                fontSize: 32.0,
                                                fontWeight: FontWeight.w500,
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
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await processRazorpayPayment(
                            context,
                            amount: (FFAppState().cartSum * 100).round(),
                            currency: 'INR',
                            userName: currentUserDisplayName,
                            userEmail: currentUserEmail,
                            onReceivedResponse: (paymentId) => safeSetState(
                                () => _model.razorpayPaymentId = paymentId),
                          );

                          if (_model.razorpayPaymentId != null &&
                              _model.razorpayPaymentId != '') {
                            await MyOrdersRecord.collection.doc().set({
                              ...createMyOrdersRecordData(
                                orderAmount: FFAppState().cartSum,
                                orderCreatedDate: dateTimeFromSecondsSinceEpoch(
                                    getCurrentTimestamp.secondsSinceEpoch),
                                userRef: currentUserReference,
                                orderStatus: OrderStatus.Pending,
                                orderId:
                                    'GPEMC ${random_data.randomInteger(100000, 999999).toString()}',
                                hostelName: FFAppState().ChooseHostel,
                              ),
                              ...mapToFirestore(
                                {
                                  'OrderItems':
                                      getCartItemTypeListFirestoreData(
                                    FFAppState().cart,
                                  ),
                                },
                              ),
                            });
                            setState(() {
                              FFAppState().cart = [];
                            });
                            setState(() {
                              FFAppState().cartSum = 0.0;
                            });
                            setState(() {
                              FFAppState().numberOfItemsinCart = 0;
                            });

                            context.pushNamed('myorders');

                            triggerPushNotification(
                              notificationTitle: 'My Orders',
                              notificationText:
                                  'Check the Order Status of your order',
                              notificationSound: 'default',
                              userRefs: [currentUserReference!],
                              initialPageName: 'myorders',
                              parameterData: {},
                            );
                          }

                          setState(() {});
                        },
                        child: Container(
                          width: double.infinity,
                          height: 150.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF44441B),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x320E151B),
                                offset: Offset(0.0, -2.0),
                              )
                            ],
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(45.0),
                              topRight: Radius.circular(45.0),
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 32.0),
                            child: Text(
                              'Checkout ${formatNumber(
                                FFAppState().cartSum,
                                formatType: FormatType.custom,
                                currency: '₹ ',
                                format: '',
                                locale: '',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            if (FFAppState().cartSum == 0.00)
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 250.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1708774431131.json',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
