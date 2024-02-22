// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuItemStruct extends FFFirebaseStruct {
  MenuItemStruct({
    String? category,
    DocumentReference? items,
    String? item,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _category = category,
        _items = items,
        _item = item,
        super(firestoreUtilData);

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "items" field.
  DocumentReference? _items;
  DocumentReference? get items => _items;
  set items(DocumentReference? val) => _items = val;
  bool hasItems() => _items != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;
  bool hasItem() => _item != null;

  static MenuItemStruct fromMap(Map<String, dynamic> data) => MenuItemStruct(
        category: data['category'] as String?,
        items: data['items'] as DocumentReference?,
        item: data['item'] as String?,
      );

  static MenuItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'items': _items,
        'item': _item,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.DocumentReference,
        ),
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
      }.withoutNulls;

  static MenuItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuItemStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        items: deserializeParam(
          data['items'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Menu-Items'],
        ),
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MenuItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MenuItemStruct &&
        category == other.category &&
        items == other.items &&
        item == other.item;
  }

  @override
  int get hashCode => const ListEquality().hash([category, items, item]);
}

MenuItemStruct createMenuItemStruct({
  String? category,
  DocumentReference? items,
  String? item,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MenuItemStruct(
      category: category,
      items: items,
      item: item,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MenuItemStruct? updateMenuItemStruct(
  MenuItemStruct? menuItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    menuItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMenuItemStructData(
  Map<String, dynamic> firestoreData,
  MenuItemStruct? menuItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (menuItem == null) {
    return;
  }
  if (menuItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && menuItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final menuItemData = getMenuItemFirestoreData(menuItem, forFieldValue);
  final nestedData = menuItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = menuItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMenuItemFirestoreData(
  MenuItemStruct? menuItem, [
  bool forFieldValue = false,
]) {
  if (menuItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(menuItem.toMap());

  // Add any Firestore field values
  menuItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMenuItemListFirestoreData(
  List<MenuItemStruct>? menuItems,
) =>
    menuItems?.map((e) => getMenuItemFirestoreData(e, true)).toList() ?? [];
