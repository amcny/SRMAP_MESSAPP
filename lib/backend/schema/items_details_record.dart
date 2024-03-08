import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsDetailsRecord extends FirestoreRecord {
  ItemsDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "menuItemRef" field.
  DocumentReference? _menuItemRef;
  DocumentReference? get menuItemRef => _menuItemRef;
  bool hasMenuItemRef() => _menuItemRef != null;

  // "modifier" field.
  List<String>? _modifier;
  List<String> get modifier => _modifier ?? const [];
  bool hasModifier() => _modifier != null;

  // "modifier_1" field.
  List<String>? _modifier1;
  List<String> get modifier1 => _modifier1 ?? const [];
  bool hasModifier1() => _modifier1 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _menuItemRef = snapshotData['menuItemRef'] as DocumentReference?;
    _modifier = getDataList(snapshotData['modifier']);
    _modifier1 = getDataList(snapshotData['modifier_1']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items-details');

  static Stream<ItemsDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsDetailsRecord.fromSnapshot(s));

  static Future<ItemsDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsDetailsRecord.fromSnapshot(s));

  static ItemsDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemsDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsDetailsRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  bool? onSale,
  double? salePrice,
  int? quantity,
  DocumentReference? menuItemRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'menuItemRef': menuItemRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsDetailsRecordDocumentEquality
    implements Equality<ItemsDetailsRecord> {
  const ItemsDetailsRecordDocumentEquality();

  @override
  bool equals(ItemsDetailsRecord? e1, ItemsDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.menuItemRef == e2?.menuItemRef &&
        listEquality.equals(e1?.modifier, e2?.modifier) &&
        listEquality.equals(e1?.modifier1, e2?.modifier1);
  }

  @override
  int hash(ItemsDetailsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.onSale,
        e?.salePrice,
        e?.quantity,
        e?.menuItemRef,
        e?.modifier,
        e?.modifier1
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsDetailsRecord;
}
