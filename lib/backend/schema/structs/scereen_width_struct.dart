// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScereenWidthStruct extends FFFirebaseStruct {
  ScereenWidthStruct({
    int? width,
    int? height,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _width = width,
        _height = height,
        super(firestoreUtilData);

  // "Width" field.
  int? _width;
  int get width => _width ?? 380;
  set width(int? val) => _width = val;
  void incrementWidth(int amount) => _width = width + amount;
  bool hasWidth() => _width != null;

  // "Height" field.
  int? _height;
  int get height => _height ?? 670;
  set height(int? val) => _height = val;
  void incrementHeight(int amount) => _height = height + amount;
  bool hasHeight() => _height != null;

  static ScereenWidthStruct fromMap(Map<String, dynamic> data) =>
      ScereenWidthStruct(
        width: castToType<int>(data['Width']),
        height: castToType<int>(data['Height']),
      );

  static ScereenWidthStruct? maybeFromMap(dynamic data) => data is Map
      ? ScereenWidthStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Width': _width,
        'Height': _height,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Width': serializeParam(
          _width,
          ParamType.int,
        ),
        'Height': serializeParam(
          _height,
          ParamType.int,
        ),
      }.withoutNulls;

  static ScereenWidthStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScereenWidthStruct(
        width: deserializeParam(
          data['Width'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['Height'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ScereenWidthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScereenWidthStruct &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => const ListEquality().hash([width, height]);
}

ScereenWidthStruct createScereenWidthStruct({
  int? width,
  int? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ScereenWidthStruct(
      width: width,
      height: height,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ScereenWidthStruct? updateScereenWidthStruct(
  ScereenWidthStruct? scereenWidth, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    scereenWidth
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addScereenWidthStructData(
  Map<String, dynamic> firestoreData,
  ScereenWidthStruct? scereenWidth,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (scereenWidth == null) {
    return;
  }
  if (scereenWidth.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && scereenWidth.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final scereenWidthData =
      getScereenWidthFirestoreData(scereenWidth, forFieldValue);
  final nestedData =
      scereenWidthData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = scereenWidth.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getScereenWidthFirestoreData(
  ScereenWidthStruct? scereenWidth, [
  bool forFieldValue = false,
]) {
  if (scereenWidth == null) {
    return {};
  }
  final firestoreData = mapToFirestore(scereenWidth.toMap());

  // Add any Firestore field values
  scereenWidth.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getScereenWidthListFirestoreData(
  List<ScereenWidthStruct>? scereenWidths,
) =>
    scereenWidths?.map((e) => getScereenWidthFirestoreData(e, true)).toList() ??
    [];
