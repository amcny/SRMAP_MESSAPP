// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemTypeStruct extends FFFirebaseStruct {
  CartItemTypeStruct({
    DocumentReference? menuItems,
    int? quantity,
    String? itemName,
    double? itemPrice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _menuItems = menuItems,
        _quantity = quantity,
        _itemName = itemName,
        _itemPrice = itemPrice,
        super(firestoreUtilData);

  // "Menu_Items" field.
  DocumentReference? _menuItems;
  DocumentReference? get menuItems => _menuItems;
  set menuItems(DocumentReference? val) => _menuItems = val;
  bool hasMenuItems() => _menuItems != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "ItemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;
  bool hasItemName() => _itemName != null;

  // "ItemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  set itemPrice(double? val) => _itemPrice = val;
  void incrementItemPrice(double amount) => _itemPrice = itemPrice + amount;
  bool hasItemPrice() => _itemPrice != null;

  static CartItemTypeStruct fromMap(Map<String, dynamic> data) =>
      CartItemTypeStruct(
        menuItems: data['Menu_Items'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        itemName: data['ItemName'] as String?,
        itemPrice: castToType<double>(data['ItemPrice']),
      );

  static CartItemTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CartItemTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Menu_Items': _menuItems,
        'quantity': _quantity,
        'ItemName': _itemName,
        'ItemPrice': _itemPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Menu_Items': serializeParam(
          _menuItems,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'ItemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'ItemPrice': serializeParam(
          _itemPrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static CartItemTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemTypeStruct(
        menuItems: deserializeParam(
          data['Menu_Items'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Menu-Items'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        itemName: deserializeParam(
          data['ItemName'],
          ParamType.String,
          false,
        ),
        itemPrice: deserializeParam(
          data['ItemPrice'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CartItemTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemTypeStruct &&
        menuItems == other.menuItems &&
        quantity == other.quantity &&
        itemName == other.itemName &&
        itemPrice == other.itemPrice;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([menuItems, quantity, itemName, itemPrice]);
}

CartItemTypeStruct createCartItemTypeStruct({
  DocumentReference? menuItems,
  int? quantity,
  String? itemName,
  double? itemPrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemTypeStruct(
      menuItems: menuItems,
      quantity: quantity,
      itemName: itemName,
      itemPrice: itemPrice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemTypeStruct? updateCartItemTypeStruct(
  CartItemTypeStruct? cartItemType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItemType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemTypeStructData(
  Map<String, dynamic> firestoreData,
  CartItemTypeStruct? cartItemType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItemType == null) {
    return;
  }
  if (cartItemType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItemType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemTypeData =
      getCartItemTypeFirestoreData(cartItemType, forFieldValue);
  final nestedData =
      cartItemTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItemType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemTypeFirestoreData(
  CartItemTypeStruct? cartItemType, [
  bool forFieldValue = false,
]) {
  if (cartItemType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItemType.toMap());

  // Add any Firestore field values
  cartItemType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemTypeListFirestoreData(
  List<CartItemTypeStruct>? cartItemTypes,
) =>
    cartItemTypes?.map((e) => getCartItemTypeFirestoreData(e, true)).toList() ??
    [];
