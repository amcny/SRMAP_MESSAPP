import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class HostlerDayscholarRecord extends FirestoreRecord {
  HostlerDayscholarRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "hos_dayscholar" field.
  String? _hosDayscholar;
  String get hosDayscholar => _hosDayscholar ?? '';
  bool hasHosDayscholar() => _hosDayscholar != null;

  // "hostel_name" field.
  String? _hostelName;
  String get hostelName => _hostelName ?? '';
  bool hasHostelName() => _hostelName != null;

  void _initializeFields() {
    _hosDayscholar = snapshotData['hos_dayscholar'] as String?;
    _hostelName = snapshotData['hostel_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hostler-dayscholar');

  static Stream<HostlerDayscholarRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HostlerDayscholarRecord.fromSnapshot(s));

  static Future<HostlerDayscholarRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HostlerDayscholarRecord.fromSnapshot(s));

  static HostlerDayscholarRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HostlerDayscholarRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HostlerDayscholarRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HostlerDayscholarRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HostlerDayscholarRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HostlerDayscholarRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHostlerDayscholarRecordData({
  String? hosDayscholar,
  String? hostelName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hos_dayscholar': hosDayscholar,
      'hostel_name': hostelName,
    }.withoutNulls,
  );

  return firestoreData;
}

class HostlerDayscholarRecordDocumentEquality
    implements Equality<HostlerDayscholarRecord> {
  const HostlerDayscholarRecordDocumentEquality();

  @override
  bool equals(HostlerDayscholarRecord? e1, HostlerDayscholarRecord? e2) {
    return e1?.hosDayscholar == e2?.hosDayscholar &&
        e1?.hostelName == e2?.hostelName;
  }

  @override
  int hash(HostlerDayscholarRecord? e) =>
      const ListEquality().hash([e?.hosDayscholar, e?.hostelName]);

  @override
  bool isValidKey(Object? o) => o is HostlerDayscholarRecord;
}
