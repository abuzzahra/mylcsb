// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveDetailStruct extends FFFirebaseStruct {
  LeaveDetailStruct({
    String? leaveId,
    String? staffId,
    String? type,
    String? reason,
    int? days,
    String? dateapply,
    String? datestart,
    String? dateend,
    String? supervisorId,
    String? supervisorDate,
    String? headId,
    String? headDate,
    String? checkId,
    String? checkDate,
    String? status,
    String? year,
    String? period,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _leaveId = leaveId,
        _staffId = staffId,
        _type = type,
        _reason = reason,
        _days = days,
        _dateapply = dateapply,
        _datestart = datestart,
        _dateend = dateend,
        _supervisorId = supervisorId,
        _supervisorDate = supervisorDate,
        _headId = headId,
        _headDate = headDate,
        _checkId = checkId,
        _checkDate = checkDate,
        _status = status,
        _year = year,
        _period = period,
        super(firestoreUtilData);

  // "leaveId" field.
  String? _leaveId;
  String get leaveId => _leaveId ?? '';
  set leaveId(String? val) => _leaveId = val;
  bool hasLeaveId() => _leaveId != null;

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  set staffId(String? val) => _staffId = val;
  bool hasStaffId() => _staffId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

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

  // "dateapply" field.
  String? _dateapply;
  String get dateapply => _dateapply ?? '';
  set dateapply(String? val) => _dateapply = val;
  bool hasDateapply() => _dateapply != null;

  // "datestart" field.
  String? _datestart;
  String get datestart => _datestart ?? '';
  set datestart(String? val) => _datestart = val;
  bool hasDatestart() => _datestart != null;

  // "dateend" field.
  String? _dateend;
  String get dateend => _dateend ?? '';
  set dateend(String? val) => _dateend = val;
  bool hasDateend() => _dateend != null;

  // "supervisorId" field.
  String? _supervisorId;
  String get supervisorId => _supervisorId ?? '';
  set supervisorId(String? val) => _supervisorId = val;
  bool hasSupervisorId() => _supervisorId != null;

  // "supervisorDate" field.
  String? _supervisorDate;
  String get supervisorDate => _supervisorDate ?? '';
  set supervisorDate(String? val) => _supervisorDate = val;
  bool hasSupervisorDate() => _supervisorDate != null;

  // "headId" field.
  String? _headId;
  String get headId => _headId ?? '';
  set headId(String? val) => _headId = val;
  bool hasHeadId() => _headId != null;

  // "headDate" field.
  String? _headDate;
  String get headDate => _headDate ?? '';
  set headDate(String? val) => _headDate = val;
  bool hasHeadDate() => _headDate != null;

  // "checkId" field.
  String? _checkId;
  String get checkId => _checkId ?? '';
  set checkId(String? val) => _checkId = val;
  bool hasCheckId() => _checkId != null;

  // "checkDate" field.
  String? _checkDate;
  String get checkDate => _checkDate ?? '';
  set checkDate(String? val) => _checkDate = val;
  bool hasCheckDate() => _checkDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  set year(String? val) => _year = val;
  bool hasYear() => _year != null;

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  set period(String? val) => _period = val;
  bool hasPeriod() => _period != null;

  static LeaveDetailStruct fromMap(Map<String, dynamic> data) =>
      LeaveDetailStruct(
        leaveId: data['leaveId'] as String?,
        staffId: data['staffId'] as String?,
        type: data['type'] as String?,
        reason: data['reason'] as String?,
        days: castToType<int>(data['days']),
        dateapply: data['dateapply'] as String?,
        datestart: data['datestart'] as String?,
        dateend: data['dateend'] as String?,
        supervisorId: data['supervisorId'] as String?,
        supervisorDate: data['supervisorDate'] as String?,
        headId: data['headId'] as String?,
        headDate: data['headDate'] as String?,
        checkId: data['checkId'] as String?,
        checkDate: data['checkDate'] as String?,
        status: data['status'] as String?,
        year: data['year'] as String?,
        period: data['period'] as String?,
      );

  static LeaveDetailStruct? maybeFromMap(dynamic data) => data is Map
      ? LeaveDetailStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'leaveId': _leaveId,
        'staffId': _staffId,
        'type': _type,
        'reason': _reason,
        'days': _days,
        'dateapply': _dateapply,
        'datestart': _datestart,
        'dateend': _dateend,
        'supervisorId': _supervisorId,
        'supervisorDate': _supervisorDate,
        'headId': _headId,
        'headDate': _headDate,
        'checkId': _checkId,
        'checkDate': _checkDate,
        'status': _status,
        'year': _year,
        'period': _period,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'leaveId': serializeParam(
          _leaveId,
          ParamType.String,
        ),
        'staffId': serializeParam(
          _staffId,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
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
        'dateapply': serializeParam(
          _dateapply,
          ParamType.String,
        ),
        'datestart': serializeParam(
          _datestart,
          ParamType.String,
        ),
        'dateend': serializeParam(
          _dateend,
          ParamType.String,
        ),
        'supervisorId': serializeParam(
          _supervisorId,
          ParamType.String,
        ),
        'supervisorDate': serializeParam(
          _supervisorDate,
          ParamType.String,
        ),
        'headId': serializeParam(
          _headId,
          ParamType.String,
        ),
        'headDate': serializeParam(
          _headDate,
          ParamType.String,
        ),
        'checkId': serializeParam(
          _checkId,
          ParamType.String,
        ),
        'checkDate': serializeParam(
          _checkDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'year': serializeParam(
          _year,
          ParamType.String,
        ),
        'period': serializeParam(
          _period,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveDetailStruct(
        leaveId: deserializeParam(
          data['leaveId'],
          ParamType.String,
          false,
        ),
        staffId: deserializeParam(
          data['staffId'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
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
        dateapply: deserializeParam(
          data['dateapply'],
          ParamType.String,
          false,
        ),
        datestart: deserializeParam(
          data['datestart'],
          ParamType.String,
          false,
        ),
        dateend: deserializeParam(
          data['dateend'],
          ParamType.String,
          false,
        ),
        supervisorId: deserializeParam(
          data['supervisorId'],
          ParamType.String,
          false,
        ),
        supervisorDate: deserializeParam(
          data['supervisorDate'],
          ParamType.String,
          false,
        ),
        headId: deserializeParam(
          data['headId'],
          ParamType.String,
          false,
        ),
        headDate: deserializeParam(
          data['headDate'],
          ParamType.String,
          false,
        ),
        checkId: deserializeParam(
          data['checkId'],
          ParamType.String,
          false,
        ),
        checkDate: deserializeParam(
          data['checkDate'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.String,
          false,
        ),
        period: deserializeParam(
          data['period'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveDetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveDetailStruct &&
        leaveId == other.leaveId &&
        staffId == other.staffId &&
        type == other.type &&
        reason == other.reason &&
        days == other.days &&
        dateapply == other.dateapply &&
        datestart == other.datestart &&
        dateend == other.dateend &&
        supervisorId == other.supervisorId &&
        supervisorDate == other.supervisorDate &&
        headId == other.headId &&
        headDate == other.headDate &&
        checkId == other.checkId &&
        checkDate == other.checkDate &&
        status == other.status &&
        year == other.year &&
        period == other.period;
  }

  @override
  int get hashCode => const ListEquality().hash([
        leaveId,
        staffId,
        type,
        reason,
        days,
        dateapply,
        datestart,
        dateend,
        supervisorId,
        supervisorDate,
        headId,
        headDate,
        checkId,
        checkDate,
        status,
        year,
        period
      ]);
}

LeaveDetailStruct createLeaveDetailStruct({
  String? leaveId,
  String? staffId,
  String? type,
  String? reason,
  int? days,
  String? dateapply,
  String? datestart,
  String? dateend,
  String? supervisorId,
  String? supervisorDate,
  String? headId,
  String? headDate,
  String? checkId,
  String? checkDate,
  String? status,
  String? year,
  String? period,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveDetailStruct(
      leaveId: leaveId,
      staffId: staffId,
      type: type,
      reason: reason,
      days: days,
      dateapply: dateapply,
      datestart: datestart,
      dateend: dateend,
      supervisorId: supervisorId,
      supervisorDate: supervisorDate,
      headId: headId,
      headDate: headDate,
      checkId: checkId,
      checkDate: checkDate,
      status: status,
      year: year,
      period: period,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveDetailStruct? updateLeaveDetailStruct(
  LeaveDetailStruct? leaveDetail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leaveDetail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveDetailStructData(
  Map<String, dynamic> firestoreData,
  LeaveDetailStruct? leaveDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leaveDetail == null) {
    return;
  }
  if (leaveDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leaveDetail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveDetailData =
      getLeaveDetailFirestoreData(leaveDetail, forFieldValue);
  final nestedData =
      leaveDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leaveDetail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveDetailFirestoreData(
  LeaveDetailStruct? leaveDetail, [
  bool forFieldValue = false,
]) {
  if (leaveDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leaveDetail.toMap());

  // Add any Firestore field values
  leaveDetail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveDetailListFirestoreData(
  List<LeaveDetailStruct>? leaveDetails,
) =>
    leaveDetails?.map((e) => getLeaveDetailFirestoreData(e, true)).toList() ??
    [];
