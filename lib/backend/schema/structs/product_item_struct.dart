// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductItemStruct extends FFFirebaseStruct {
  ProductItemStruct({
    String? name,
    double? price,
    String? img,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _price = price,
        _img = img,
        _type = type,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  static ProductItemStruct fromMap(Map<String, dynamic> data) =>
      ProductItemStruct(
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
        img: data['img'] as String?,
        type: data['type'] as String?,
      );

  static ProductItemStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'price': _price,
        'img': _img,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductItemStruct &&
        name == other.name &&
        price == other.price &&
        img == other.img &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([name, price, img, type]);
}

ProductItemStruct createProductItemStruct({
  String? name,
  double? price,
  String? img,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductItemStruct(
      name: name,
      price: price,
      img: img,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductItemStruct? updateProductItemStruct(
  ProductItemStruct? productItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductItemStructData(
  Map<String, dynamic> firestoreData,
  ProductItemStruct? productItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productItem == null) {
    return;
  }
  if (productItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productItemData =
      getProductItemFirestoreData(productItem, forFieldValue);
  final nestedData =
      productItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductItemFirestoreData(
  ProductItemStruct? productItem, [
  bool forFieldValue = false,
]) {
  if (productItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productItem.toMap());

  // Add any Firestore field values
  productItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductItemListFirestoreData(
  List<ProductItemStruct>? productItems,
) =>
    productItems?.map((e) => getProductItemFirestoreData(e, true)).toList() ??
    [];
