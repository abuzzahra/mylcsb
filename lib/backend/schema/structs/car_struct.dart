// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CarStruct extends FFFirebaseStruct {
  CarStruct({
    String? carId,
    String? plateNo,
    String? descp,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _carId = carId,
        _plateNo = plateNo,
        _descp = descp,
        _status = status,
        super(firestoreUtilData);

  // "carId" field.
  String? _carId;
  String get carId => _carId ?? '';
  set carId(String? val) => _carId = val;
  bool hasCarId() => _carId != null;

  // "plateNo" field.
  String? _plateNo;
  String get plateNo => _plateNo ?? '';
  set plateNo(String? val) => _plateNo = val;
  bool hasPlateNo() => _plateNo != null;

  // "descp" field.
  String? _descp;
  String get descp => _descp ?? '';
  set descp(String? val) => _descp = val;
  bool hasDescp() => _descp != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static CarStruct fromMap(Map<String, dynamic> data) => CarStruct(
        carId: data['carId'] as String?,
        plateNo: data['plateNo'] as String?,
        descp: data['descp'] as String?,
        status: data['status'] as String?,
      );

  static CarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'carId': _carId,
        'plateNo': _plateNo,
        'descp': _descp,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carId': serializeParam(
          _carId,
          ParamType.String,
        ),
        'plateNo': serializeParam(
          _plateNo,
          ParamType.String,
        ),
        'descp': serializeParam(
          _descp,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static CarStruct fromSerializableMap(Map<String, dynamic> data) => CarStruct(
        carId: deserializeParam(
          data['carId'],
          ParamType.String,
          false,
        ),
        plateNo: deserializeParam(
          data['plateNo'],
          ParamType.String,
          false,
        ),
        descp: deserializeParam(
          data['descp'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarStruct &&
        carId == other.carId &&
        plateNo == other.plateNo &&
        descp == other.descp &&
        status == other.status;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([carId, plateNo, descp, status]);
}

CarStruct createCarStruct({
  String? carId,
  String? plateNo,
  String? descp,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CarStruct(
      carId: carId,
      plateNo: plateNo,
      descp: descp,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CarStruct? updateCarStruct(
  CarStruct? car, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    car
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCarStructData(
  Map<String, dynamic> firestoreData,
  CarStruct? car,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (car == null) {
    return;
  }
  if (car.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && car.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final carData = getCarFirestoreData(car, forFieldValue);
  final nestedData = carData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = car.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCarFirestoreData(
  CarStruct? car, [
  bool forFieldValue = false,
]) {
  if (car == null) {
    return {};
  }
  final firestoreData = mapToFirestore(car.toMap());

  // Add any Firestore field values
  car.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCarListFirestoreData(
  List<CarStruct>? cars,
) =>
    cars?.map((e) => getCarFirestoreData(e, true)).toList() ?? [];
