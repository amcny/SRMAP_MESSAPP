import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartsRecord extends FirestoreRecord {
  CartsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  // "cartActive" field.
  bool? _cartActive;
  bool get cartActive => _cartActive ?? false;
  bool hasCartActive() => _cartActive != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "cartItems" field.
  DocumentReference? _cartItems;
  DocumentReference? get cartItems => _cartItems;
  bool hasCartItems() => _cartItems != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _itemCount = castToType<int>(snapshotData['itemCount']);
    _cartActive = snapshotData['cartActive'] as bool?;
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _cartItems = snapshotData['cartItems'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carts');

  static Stream<CartsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartsRecord.fromSnapshot(s));

  static Future<CartsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartsRecord.fromSnapshot(s));

  static CartsRecord fromSnapshot(DocumentSnapshot snapshot) => CartsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartsRecordData({
  DocumentReference? userRef,
  int? itemCount,
  bool? cartActive,
  double? subTotal,
  DocumentReference? cartItems,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'itemCount': itemCount,
      'cartActive': cartActive,
      'subTotal': subTotal,
      'cartItems': cartItems,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartsRecordDocumentEquality implements Equality<CartsRecord> {
  const CartsRecordDocumentEquality();

  @override
  bool equals(CartsRecord? e1, CartsRecord? e2) {
    return e1?.userRef == e2?.userRef &&
        e1?.itemCount == e2?.itemCount &&
        e1?.cartActive == e2?.cartActive &&
        e1?.subTotal == e2?.subTotal &&
        e1?.cartItems == e2?.cartItems;
  }

  @override
  int hash(CartsRecord? e) => const ListEquality().hash(
      [e?.userRef, e?.itemCount, e?.cartActive, e?.subTotal, e?.cartItems]);

  @override
  bool isValidKey(Object? o) => o is CartsRecord;
}
