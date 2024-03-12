import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'myorders_model.dart';
export 'myorders_model.dart';

class MyordersWidget extends StatefulWidget {
  const MyordersWidget({super.key});

  @override
  State<MyordersWidget> createState() => _MyordersWidgetState();
}

class _MyordersWidgetState extends State<MyordersWidget> {
  late MyordersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyordersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF404020),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Recent Orders',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                  fontSize: 22.0,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Below are your most recent orders',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Ubuntu',
                        color: const Color(0xFF606A85),
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              StreamBuilder<List<MyOrdersRecord>>(
                stream: queryMyOrdersRecord(
                  queryBuilder: (myOrdersRecord) => myOrdersRecord
                      .where(
                        'UserRef',
                        isEqualTo: currentUserReference,
                      )
                      .orderBy('OrderCreatedDate', descending: true),
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
                  List<MyOrdersRecord> listViewMyOrdersRecordList =
                      snapshot.data!;
                  if (listViewMyOrdersRecordList.isEmpty) {
                    return Image.asset(
                      'assets/images/Order_food-bro.png',
                      fit: BoxFit.cover,
                    );
                  }
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewMyOrdersRecordList.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                    itemBuilder: (context, listViewIndex) {
                      final listViewMyOrdersRecord =
                          listViewMyOrdersRecordList[listViewIndex];
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'order_details',
                              queryParameters: {
                                'orders': serializeParam(
                                  listViewMyOrdersRecord,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'orders': listViewMyOrdersRecord,
                              },
                            );
                          },
                          child: Material(
                            color: Colors.transparent,
                            elevation: 1.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 5.0),
                                            child: Text(
                                              'Order ID : ${listViewMyOrdersRecord.orderId}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 25.0),
                                            child: Text(
                                              '${dateTimeFormat(
                                                'MMMEd',
                                                listViewMyOrdersRecord
                                                    .orderCreatedDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}   ${dateTimeFormat(
                                                'jm',
                                                listViewMyOrdersRecord
                                                    .orderCreatedDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Flexible(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              formatNumber(
                                                listViewMyOrdersRecord
                                                    .orderAmount,
                                                formatType: FormatType.custom,
                                                currency: '₹ ',
                                                format: '',
                                                locale: '',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Ubuntu',
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 15.0, 0.0, 0.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 0.5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: Container(
                                                  width: 90.0,
                                                  height: 35.0,
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      if (listViewMyOrdersRecord
                                                              .orderStatus ==
                                                          OrderStatus.Pending) {
                                                        return const Color(
                                                            0xFF2C73CD);
                                                      } else if (listViewMyOrdersRecord
                                                              .orderStatus ==
                                                          OrderStatus
                                                              .Accepted) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .tertiary;
                                                      } else if (listViewMyOrdersRecord
                                                              .orderStatus ==
                                                          OrderStatus
                                                              .Completed) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .success;
                                                      } else if (listViewMyOrdersRecord
                                                              .orderStatus ==
                                                          OrderStatus
                                                              .Cancelled) {
                                                        return FlutterFlowTheme
                                                                .of(context)
                                                            .error;
                                                      } else if (listViewMyOrdersRecord
                                                              .orderStatus ==
                                                          OrderStatus
                                                              .Delivered) {
                                                        return const Color(
                                                            0xFF026A3A);
                                                      } else {
                                                        return const Color(
                                                            0x00000000);
                                                      }
                                                    }(),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24.0),
                                                    border: Border.all(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  6.0,
                                                                  5.0,
                                                                  6.0,
                                                                  5.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (listViewMyOrdersRecord
                                                                  .orderStatus ==
                                                              OrderStatus
                                                                  .Accepted) {
                                                            triggerPushNotification(
                                                              notificationTitle:
                                                                  'Order Accepted',
                                                              notificationText:
                                                                  'Your Order with ${listViewMyOrdersRecord.orderId} has been Accepted',
                                                              notificationImageUrl:
                                                                  'https://raw.githubusercontent.com/YuvaSriSai18/srmmess/main/undraw_Order_confirmed_re_g0if%20(1).png',
                                                              notificationSound:
                                                                  'default',
                                                              userRefs: [
                                                                currentUserReference!
                                                              ],
                                                              initialPageName:
                                                                  'myorders',
                                                              parameterData: {},
                                                            );
                                                            return;
                                                          } else if (listViewMyOrdersRecord
                                                                  .orderStatus ==
                                                              OrderStatus
                                                                  .Completed) {
                                                            triggerPushNotification(
                                                              notificationTitle:
                                                                  'Order Completed',
                                                              notificationText:
                                                                  'Your Order with ${listViewMyOrdersRecord.orderId} has been Completed',
                                                              notificationImageUrl:
                                                                  'https://raw.githubusercontent.com/YuvaSriSai18/srmmess/main/undraw_verified_re_4io7.png',
                                                              notificationSound:
                                                                  'default',
                                                              userRefs: [
                                                                currentUserReference!
                                                              ],
                                                              initialPageName:
                                                                  'myorders',
                                                              parameterData: {},
                                                            );
                                                            return;
                                                          } else if (listViewMyOrdersRecord
                                                                  .orderStatus ==
                                                              OrderStatus
                                                                  .Cancelled) {
                                                            triggerPushNotification(
                                                              notificationTitle:
                                                                  'Order Cancelled',
                                                              notificationText:
                                                                  'Your Order with ${listViewMyOrdersRecord.orderId} has been cancelled',
                                                              notificationImageUrl:
                                                                  'https://cdn.iconscout.com/icon/free/png-256/free-cancel-food-2578716-2146967.png',
                                                              notificationSound:
                                                                  'default',
                                                              userRefs: [
                                                                currentUserReference!
                                                              ],
                                                              initialPageName:
                                                                  'myorders',
                                                              parameterData: {},
                                                            );
                                                            return;
                                                          } else if (listViewMyOrdersRecord
                                                                  .orderStatus ==
                                                              OrderStatus
                                                                  .Delivered) {
                                                            triggerPushNotification(
                                                              notificationTitle:
                                                                  'Order Delivered',
                                                              notificationText:
                                                                  'Your Order with ${listViewMyOrdersRecord.orderId} has been DeliveredThank You',
                                                              notificationImageUrl:
                                                                  'https://vectorstate.com/stock-photo-preview/133895479/350/inh_18984_50523.jpg',
                                                              notificationSound:
                                                                  'default',
                                                              userRefs: [
                                                                currentUserReference!
                                                              ],
                                                              initialPageName:
                                                                  'myorders',
                                                              parameterData: {},
                                                            );
                                                            return;
                                                          } else {
                                                            return;
                                                          }
                                                        },
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewMyOrdersRecord
                                                                .orderStatus
                                                                ?.name,
                                                            'Pending',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Ubuntu',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  (listViewMyOrdersRecord.orderStatus == OrderStatus.Accepted) ||
                                                                          (listViewMyOrdersRecord.orderStatus ==
                                                                              OrderStatus
                                                                                  .Delivered) ||
                                                                          (listViewMyOrdersRecord.orderStatus ==
                                                                              OrderStatus
                                                                                  .Completed)
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.5,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
