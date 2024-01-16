// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveStruct extends FFFirebaseStruct {
  LeaveStruct({
    String? leaveId,
    String? type,
    String? dateapply,
    String? reason,
    int? days,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveId = leaveId,
        _type = type,
        _dateapply = dateapply,
        _reason = reason,
        _days = days,
        _status = status,
        super(firestoreUtilData);

  // "leaveId" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;
  bool hasLeaveId() => _leaveId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "dateapply" field.
  String? _dateapply;
  String get dateapply => _dateapply ?? '';
  set dateapply(String? val) => _dateapply = val;
  bool hasDateapply() => _dateapply != null;

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  set reason(String? val) => _reason = val;
  bool hasReason() => _reason != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;
  void incrementDays(int amount) => _days = days + amount;
  bool hasDays() => _days != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  static LeaveStruct fromMap(Map<String, dynamic> data) => LeaveStruct(
        leaveId: data['leaveId'] as String?,
        type: data['type'] as String?,
        dateapply: data['dateapply'] as String?,
        reason: data['reason'] as String?,
        days: castToType<int>(data['days']),
        status: data['status'] as String?,
      );

  static LeaveStruct? maybeFromMap(dynamic data) =>
      data is Map ? LeaveStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'leaveId': _leaveId,
        'type': _type,
        'dateapply': _dateapply,
        'reason': _reason,
        'days': _days,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leaveId': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'dateapply': serializeParam(
          _dateapply,
          ParamType.String,
        ),
        'reason': serializeParam(
          _reason,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveStruct(
        leaveId: deserializeParam(
          data['leaveId'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        dateapply: deserializeParam(
          data['dateapply'],
          ParamType.String,
          false,
        ),
        reason: deserializeParam(
          data['reason'],
          ParamType.String,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveStruct &&
        leaveId == other.leaveId &&
        type == other.type &&
        dateapply == other.dateapply &&
        reason == other.reason &&
        days == other.days &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([leaveId, type, dateapply, reason, days, status]);
}

LeaveStruct createLeaveStruct({
  String? leaveId,
  String? type,
  String? dateapply,
  String? reason,
  int? days,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveStruct(
      leaveId: leaveId,
      type: type,
      dateapply: dateapply,
      reason: reason,
      days: days,
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveStruct? updateLeaveStruct(
  LeaveStruct? leave, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leave
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveStructData(
  Map<String, dynamic> firestoreData,
  LeaveStruct? leave,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leave == null) {
    return;
  }
  if (leave.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leave.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveData = getLeaveFirestoreData(leave, forFieldValue);
  final nestedData = leaveData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leave.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveFirestoreData(
  LeaveStruct? leave, [
  bool forFieldValue = false,
]) {
  if (leave == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leave.toMap());

  // Add any Firestore field values
  leave.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveListFirestoreData(
  List<LeaveStruct>? leaves,
) =>
    leaves?.map((e) => getLeaveFirestoreData(e, true)).toList() ?? [];
