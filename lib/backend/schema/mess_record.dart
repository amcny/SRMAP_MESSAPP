import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessRecord extends FirestoreRecord {
  MessRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  bool hasDay() => _day != null;

  // "order_no" field.
  int? _orderNo;
  int get orderNo => _orderNo ?? 0;
  bool hasOrderNo() => _orderNo != null;

  // "mealdata" field.
  List<MessStruct>? _mealdata;
  List<MessStruct> get mealdata => _mealdata ?? const [];
  bool hasMealdata() => _mealdata != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _day = snapshotData['day'] as String?;
    _orderNo = castToType<int>(snapshotData['order_no']);
    _mealdata = getStructList(
      snapshotData['mealdata'],
      MessStruct.fromMap,
    );
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mess');

  static Stream<MessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessRecord.fromSnapshot(s));

  static Future<MessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessRecord.fromSnapshot(s));

  static MessRecord fromSnapshot(DocumentSnapshot snapshot) => MessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessRecordData({
  String? day,
  int? orderNo,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'order_no': orderNo,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessRecordDocumentEquality implements Equality<MessRecord> {
  const MessRecordDocumentEquality();

  @override
  bool equals(MessRecord? e1, MessRecord? e2) {
    const listEquality = ListEquality();
    return e1?.day == e2?.day &&
        e1?.orderNo == e2?.orderNo &&
        listEquality.equals(e1?.mealdata, e2?.mealdata) &&
        e1?.name == e2?.name;
  }

  @override
  int hash(MessRecord? e) =>
      const ListEquality().hash([e?.day, e?.orderNo, e?.mealdata, e?.name]);

  @override
  bool isValidKey(Object? o) => o is MessRecord;
}
