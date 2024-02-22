// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderedItemsStruct extends FFFirebaseStruct {
  OrderedItemsStruct({
    String? itemName,
    double? itemPrice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemName = itemName,
        _itemPrice = itemPrice,
        super(firestoreUtilData);

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;
  bool hasItemName() => _itemName != null;

  // "item_price" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  set itemPrice(double? val) => _itemPrice = val;
  void incrementItemPrice(double amount) => _itemPrice = itemPrice + amount;
  bool hasItemPrice() => _itemPrice != null;

  static OrderedItemsStruct fromMap(Map<String, dynamic> data) =>
      OrderedItemsStruct(
        itemName: data['item_name'] as String?,
        itemPrice: castToType<double>(data['item_price']),
      );

  static OrderedItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderedItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_name': _itemName,
        'item_price': _itemPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_name': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'item_price': serializeParam(
          _itemPrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static OrderedItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrderedItemsStruct(
        itemName: deserializeParam(
          data['item_name'],
          ParamType.String,
          false,
        ),
        itemPrice: deserializeParam(
          data['item_price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'OrderedItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderedItemsStruct &&
        itemName == other.itemName &&
        itemPrice == other.itemPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([itemName, itemPrice]);
}

OrderedItemsStruct createOrderedItemsStruct({
  String? itemName,
  double? itemPrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderedItemsStruct(
      itemName: itemName,
      itemPrice: itemPrice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderedItemsStruct? updateOrderedItemsStruct(
  OrderedItemsStruct? orderedItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderedItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderedItemsStructData(
  Map<String, dynamic> firestoreData,
  OrderedItemsStruct? orderedItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderedItems == null) {
    return;
  }
  if (orderedItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderedItems.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderedItemsData =
      getOrderedItemsFirestoreData(orderedItems, forFieldValue);
  final nestedData =
      orderedItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderedItems.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderedItemsFirestoreData(
  OrderedItemsStruct? orderedItems, [
  bool forFieldValue = false,
]) {
  if (orderedItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderedItems.toMap());

  // Add any Firestore field values
  orderedItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderedItemsListFirestoreData(
  List<OrderedItemsStruct>? orderedItemss,
) =>
    orderedItemss?.map((e) => getOrderedItemsFirestoreData(e, true)).toList() ??
    [];
