import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TaskesRecord extends FirestoreRecord {
  TaskesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _icon = snapshotData['icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('taskes');

  static Stream<TaskesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskesRecord.fromSnapshot(s));

  static Future<TaskesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskesRecord.fromSnapshot(s));

  static TaskesRecord fromSnapshot(DocumentSnapshot snapshot) => TaskesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskesRecordData({
  String? name,
  bool? completed,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'completed': completed,
      'icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskesRecordDocumentEquality implements Equality<TaskesRecord> {
  const TaskesRecordDocumentEquality();

  @override
  bool equals(TaskesRecord? e1, TaskesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.completed == e2?.completed &&
        e1?.icon == e2?.icon;
  }

  @override
  int hash(TaskesRecord? e) =>
      const ListEquality().hash([e?.name, e?.completed, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is TaskesRecord;
}
