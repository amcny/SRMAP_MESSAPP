import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemsRecord extends FirestoreRecord {
  MenuItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "itemId" field.
  int? _itemId;
  int get itemId => _itemId ?? 0;
  bool hasItemId() => _itemId != null;

  // "categoryID" field.
  int? _categoryID;
  int get categoryID => _categoryID ?? 0;
  bool hasCategoryID() => _categoryID != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _onSale = snapshotData['on_sale'] as bool?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _image = snapshotData['image'] as String?;
    _category = snapshotData['category'] as String?;
    _itemId = castToType<int>(snapshotData['itemId']);
    _categoryID = castToType<int>(snapshotData['categoryID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Menu-Items');

  static Stream<MenuItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuItemsRecord.fromSnapshot(s));

  static Future<MenuItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuItemsRecord.fromSnapshot(s));

  static MenuItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuItemsRecordData({
  String? name,
  double? price,
  bool? onSale,
  int? quantity,
  String? image,
  String? category,
  int? itemId,
  int? categoryID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'on_sale': onSale,
      'quantity': quantity,
      'image': image,
      'category': category,
      'itemId': itemId,
      'categoryID': categoryID,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuItemsRecordDocumentEquality implements Equality<MenuItemsRecord> {
  const MenuItemsRecordDocumentEquality();

  @override
  bool equals(MenuItemsRecord? e1, MenuItemsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.onSale == e2?.onSale &&
        e1?.quantity == e2?.quantity &&
        e1?.image == e2?.image &&
        e1?.category == e2?.category &&
        e1?.itemId == e2?.itemId &&
        e1?.categoryID == e2?.categoryID;
  }

  @override
  int hash(MenuItemsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.onSale,
        e?.quantity,
        e?.image,
        e?.category,
        e?.itemId,
        e?.categoryID
      ]);

  @override
  bool isValidKey(Object? o) => o is MenuItemsRecord;
}
