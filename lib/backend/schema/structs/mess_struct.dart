// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MessStruct extends FFFirebaseStruct {
  MessStruct({
    String? meal,
    String? item,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _meal = meal,
        _item = item,
        super(firestoreUtilData);

  // "meal" field.
  String? _meal;
  String get meal => _meal ?? '';
  set meal(String? val) => _meal = val;
  bool hasMeal() => _meal != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  set item(String? val) => _item = val;
  bool hasItem() => _item != null;

  static MessStruct fromMap(Map<String, dynamic> data) => MessStruct(
        meal: data['meal'] as String?,
        item: data['item'] as String?,
      );

  static MessStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'meal': _meal,
        'item': _item,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'meal': serializeParam(
          _meal,
          ParamType.String,
        ),
        'item': serializeParam(
          _item,
          ParamType.String,
        ),
      }.withoutNulls;

  static MessStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessStruct(
        meal: deserializeParam(
          data['meal'],
          ParamType.String,
          false,
        ),
        item: deserializeParam(
          data['item'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MessStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessStruct && meal == other.meal && item == other.item;
  }

  @override
  int get hashCode => const ListEquality().hash([meal, item]);
}

MessStruct createMessStruct({
  String? meal,
  String? item,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessStruct(
      meal: meal,
      item: item,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessStruct? updateMessStruct(
  MessStruct? mess, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mess
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessStructData(
  Map<String, dynamic> firestoreData,
  MessStruct? mess,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mess == null) {
    return;
  }
  if (mess.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && mess.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messData = getMessFirestoreData(mess, forFieldValue);
  final nestedData = messData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mess.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessFirestoreData(
  MessStruct? mess, [
  bool forFieldValue = false,
]) {
  if (mess == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mess.toMap());

  // Add any Firestore field values
  mess.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessListFirestoreData(
  List<MessStruct>? messs,
) =>
    messs?.map((e) => getMessFirestoreData(e, true)).toList() ?? [];
