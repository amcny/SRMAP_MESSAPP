import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyOrdersRecord extends FirestoreRecord {
  MyOrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "OrderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "OrderItems" field.
  List<CartItemTypeStruct>? _orderItems;
  List<CartItemTypeStruct> get orderItems => _orderItems ?? const [];
  bool hasOrderItems() => _orderItems != null;

  // "OrderAmount" field.
  double? _orderAmount;
  double get orderAmount => _orderAmount ?? 0.0;
  bool hasOrderAmount() => _orderAmount != null;

  // "OrderStatus" field.
  OrderStatus? _orderStatus;
  OrderStatus? get orderStatus => _orderStatus;
  bool hasOrderStatus() => _orderStatus != null;

  // "OrderCreatedDate" field.
  DateTime? _orderCreatedDate;
  DateTime? get orderCreatedDate => _orderCreatedDate;
  bool hasOrderCreatedDate() => _orderCreatedDate != null;

  // "UserRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "Hostel_Name" field.
  String? _hostelName;
  String get hostelName => _hostelName ?? '';
  bool hasHostelName() => _hostelName != null;

  void _initializeFields() {
    _orderId = snapshotData['OrderId'] as String?;
    _orderItems = getStructList(
      snapshotData['OrderItems'],
      CartItemTypeStruct.fromMap,
    );
    _orderAmount = castToType<double>(snapshotData['OrderAmount']);
    _orderStatus = deserializeEnum<OrderStatus>(snapshotData['OrderStatus']);
    _orderCreatedDate = snapshotData['OrderCreatedDate'] as DateTime?;
    _userRef = snapshotData['UserRef'] as DocumentReference?;
    _hostelName = snapshotData['Hostel_Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('My_Orders');

  static Stream<MyOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyOrdersRecord.fromSnapshot(s));

  static Future<MyOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyOrdersRecord.fromSnapshot(s));

  static MyOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyOrdersRecordData({
  String? orderId,
  double? orderAmount,
  OrderStatus? orderStatus,
  DateTime? orderCreatedDate,
  DocumentReference? userRef,
  String? hostelName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'OrderId': orderId,
      'OrderAmount': orderAmount,
      'OrderStatus': orderStatus,
      'OrderCreatedDate': orderCreatedDate,
      'UserRef': userRef,
      'Hostel_Name': hostelName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyOrdersRecordDocumentEquality implements Equality<MyOrdersRecord> {
  const MyOrdersRecordDocumentEquality();

  @override
  bool equals(MyOrdersRecord? e1, MyOrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderId == e2?.orderId &&
        listEquality.equals(e1?.orderItems, e2?.orderItems) &&
        e1?.orderAmount == e2?.orderAmount &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.orderCreatedDate == e2?.orderCreatedDate &&
        e1?.userRef == e2?.userRef &&
        e1?.hostelName == e2?.hostelName;
  }

  @override
  int hash(MyOrdersRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.orderItems,
        e?.orderAmount,
        e?.orderStatus,
        e?.orderCreatedDate,
        e?.userRef,
        e?.hostelName
      ]);

  @override
  bool isValidKey(Object? o) => o is MyOrdersRecord;
}
