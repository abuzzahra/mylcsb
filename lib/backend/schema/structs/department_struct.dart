// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DepartmentStruct extends FFFirebaseStruct {
  DepartmentStruct({
    int? id,
    String? descp,
    String? headID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _descp = descp,
        _headID = headID,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "descp" field.
  String? _descp;
  String get descp => _descp ?? '';
  set descp(String? val) => _descp = val;
  bool hasDescp() => _descp != null;

  // "headID" field.
  String? _headID;
  String get headID => _headID ?? '';
  set headID(String? val) => _headID = val;
  bool hasHeadID() => _headID != null;

  static DepartmentStruct fromMap(Map<String, dynamic> data) =>
      DepartmentStruct(
        id: castToType<int>(data['id']),
        descp: data['descp'] as String?,
        headID: data['headID'] as String?,
      );

  static DepartmentStruct? maybeFromMap(dynamic data) => data is Map
      ? DepartmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'descp': _descp,
        'headID': _headID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'descp': serializeParam(
          _descp,
          ParamType.String,
        ),
        'headID': serializeParam(
          _headID,
          ParamType.String,
        ),
      }.withoutNulls;

  static DepartmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      DepartmentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        descp: deserializeParam(
          data['descp'],
          ParamType.String,
          false,
        ),
        headID: deserializeParam(
          data['headID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DepartmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DepartmentStruct &&
        id == other.id &&
        descp == other.descp &&
        headID == other.headID;
  }

  @override
  int get hashCode => const ListEquality().hash([id, descp, headID]);
}

DepartmentStruct createDepartmentStruct({
  int? id,
  String? descp,
  String? headID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DepartmentStruct(
      id: id,
      descp: descp,
      headID: headID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DepartmentStruct? updateDepartmentStruct(
  DepartmentStruct? department, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    department
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDepartmentStructData(
  Map<String, dynamic> firestoreData,
  DepartmentStruct? department,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (department == null) {
    return;
  }
  if (department.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && department.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final departmentData = getDepartmentFirestoreData(department, forFieldValue);
  final nestedData = departmentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = department.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDepartmentFirestoreData(
  DepartmentStruct? department, [
  bool forFieldValue = false,
]) {
  if (department == null) {
    return {};
  }
  final firestoreData = mapToFirestore(department.toMap());

  // Add any Firestore field values
  department.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDepartmentListFirestoreData(
  List<DepartmentStruct>? departments,
) =>
    departments?.map((e) => getDepartmentFirestoreData(e, true)).toList() ?? [];
