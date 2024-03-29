// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClaimStruct extends FFFirebaseStruct {
  ClaimStruct({
    String? claimId,
    String? date,
    String? staffId,
    String? staffName,
    String? status,
    String? loccode,
    String? deptId,
    String? postId,
    String? postDesc,
    String? year,
    String? period,
    String? remark,
    String? time,
    String? pvno,
    String? claimDetailId,
    String? claimTypeId,
    String? claimTypename,
    String? position,
    double? totalRate,
    String? noInvoice,
    String? imageurl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _claimId = claimId,
        _date = date,
        _staffId = staffId,
        _staffName = staffName,
        _status = status,
        _loccode = loccode,
        _deptId = deptId,
        _postId = postId,
        _postDesc = postDesc,
        _year = year,
        _period = period,
        _remark = remark,
        _time = time,
        _pvno = pvno,
        _claimDetailId = claimDetailId,
        _claimTypeId = claimTypeId,
        _claimTypename = claimTypename,
        _position = position,
        _totalRate = totalRate,
        _noInvoice = noInvoice,
        _imageurl = imageurl,
        super(firestoreUtilData);

  // "claimId" field.
  String? _claimId;
  String get claimId => _claimId ?? '';
  set claimId(String? val) => _claimId = val;
  bool hasClaimId() => _claimId != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

  // "staffId" field.
  String? _staffId;
  String get staffId => _staffId ?? '';
  set staffId(String? val) => _staffId = val;
  bool hasStaffId() => _staffId != null;

  // "staffName" field.
  String? _staffName;
  String get staffName => _staffName ?? '';
  set staffName(String? val) => _staffName = val;
  bool hasStaffName() => _staffName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

  // "loccode" field.
  String? _loccode;
  String get loccode => _loccode ?? '';
  set loccode(String? val) => _loccode = val;
  bool hasLoccode() => _loccode != null;

  // "deptId" field.
  String? _deptId;
  String get deptId => _deptId ?? '';
  set deptId(String? val) => _deptId = val;
  bool hasDeptId() => _deptId != null;

  // "postId" field.
  String? _postId;
  String get postId => _postId ?? '';
  set postId(String? val) => _postId = val;
  bool hasPostId() => _postId != null;

  // "postDesc" field.
  String? _postDesc;
  String get postDesc => _postDesc ?? '';
  set postDesc(String? val) => _postDesc = val;
  bool hasPostDesc() => _postDesc != null;

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

  // "remark" field.
  String? _remark;
  String get remark => _remark ?? '';
  set remark(String? val) => _remark = val;
  bool hasRemark() => _remark != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;
  bool hasTime() => _time != null;

  // "pvno" field.
  String? _pvno;
  String get pvno => _pvno ?? '';
  set pvno(String? val) => _pvno = val;
  bool hasPvno() => _pvno != null;

  // "claimDetailId" field.
  String? _claimDetailId;
  String get claimDetailId => _claimDetailId ?? '';
  set claimDetailId(String? val) => _claimDetailId = val;
  bool hasClaimDetailId() => _claimDetailId != null;

  // "claimTypeId" field.
  String? _claimTypeId;
  String get claimTypeId => _claimTypeId ?? '';
  set claimTypeId(String? val) => _claimTypeId = val;
  bool hasClaimTypeId() => _claimTypeId != null;

  // "claimTypename" field.
  String? _claimTypename;
  String get claimTypename => _claimTypename ?? '';
  set claimTypename(String? val) => _claimTypename = val;
  bool hasClaimTypename() => _claimTypename != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;
  bool hasPosition() => _position != null;

  // "totalRate" field.
  double? _totalRate;
  double get totalRate => _totalRate ?? 0.0;
  set totalRate(double? val) => _totalRate = val;
  void incrementTotalRate(double amount) => _totalRate = totalRate + amount;
  bool hasTotalRate() => _totalRate != null;

  // "noInvoice" field.
  String? _noInvoice;
  String get noInvoice => _noInvoice ?? '';
  set noInvoice(String? val) => _noInvoice = val;
  bool hasNoInvoice() => _noInvoice != null;

  // "imageurl" field.
  String? _imageurl;
  String get imageurl => _imageurl ?? '';
  set imageurl(String? val) => _imageurl = val;
  bool hasImageurl() => _imageurl != null;

  static ClaimStruct fromMap(Map<String, dynamic> data) => ClaimStruct(
        claimId: data['claimId'] as String?,
        date: data['date'] as String?,
        staffId: data['staffId'] as String?,
        staffName: data['staffName'] as String?,
        status: data['status'] as String?,
        loccode: data['loccode'] as String?,
        deptId: data['deptId'] as String?,
        postId: data['postId'] as String?,
        postDesc: data['postDesc'] as String?,
        year: data['year'] as String?,
        period: data['period'] as String?,
        remark: data['remark'] as String?,
        time: data['time'] as String?,
        pvno: data['pvno'] as String?,
        claimDetailId: data['claimDetailId'] as String?,
        claimTypeId: data['claimTypeId'] as String?,
        claimTypename: data['claimTypename'] as String?,
        position: data['position'] as String?,
        totalRate: castToType<double>(data['totalRate']),
        noInvoice: data['noInvoice'] as String?,
        imageurl: data['imageurl'] as String?,
      );

  static ClaimStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClaimStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'claimId': _claimId,
        'date': _date,
        'staffId': _staffId,
        'staffName': _staffName,
        'status': _status,
        'loccode': _loccode,
        'deptId': _deptId,
        'postId': _postId,
        'postDesc': _postDesc,
        'year': _year,
        'period': _period,
        'remark': _remark,
        'time': _time,
        'pvno': _pvno,
        'claimDetailId': _claimDetailId,
        'claimTypeId': _claimTypeId,
        'claimTypename': _claimTypename,
        'position': _position,
        'totalRate': _totalRate,
        'noInvoice': _noInvoice,
        'imageurl': _imageurl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'claimId': serializeParam(
          _claimId,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'staffId': serializeParam(
          _staffId,
          ParamType.String,
        ),
        'staffName': serializeParam(
          _staffName,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'loccode': serializeParam(
          _loccode,
          ParamType.String,
        ),
        'deptId': serializeParam(
          _deptId,
          ParamType.String,
        ),
        'postId': serializeParam(
          _postId,
          ParamType.String,
        ),
        'postDesc': serializeParam(
          _postDesc,
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
        'remark': serializeParam(
          _remark,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'pvno': serializeParam(
          _pvno,
          ParamType.String,
        ),
        'claimDetailId': serializeParam(
          _claimDetailId,
          ParamType.String,
        ),
        'claimTypeId': serializeParam(
          _claimTypeId,
          ParamType.String,
        ),
        'claimTypename': serializeParam(
          _claimTypename,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'totalRate': serializeParam(
          _totalRate,
          ParamType.double,
        ),
        'noInvoice': serializeParam(
          _noInvoice,
          ParamType.String,
        ),
        'imageurl': serializeParam(
          _imageurl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClaimStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClaimStruct(
        claimId: deserializeParam(
          data['claimId'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        staffId: deserializeParam(
          data['staffId'],
          ParamType.String,
          false,
        ),
        staffName: deserializeParam(
          data['staffName'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        loccode: deserializeParam(
          data['loccode'],
          ParamType.String,
          false,
        ),
        deptId: deserializeParam(
          data['deptId'],
          ParamType.String,
          false,
        ),
        postId: deserializeParam(
          data['postId'],
          ParamType.String,
          false,
        ),
        postDesc: deserializeParam(
          data['postDesc'],
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
        remark: deserializeParam(
          data['remark'],
          ParamType.String,
          false,
        ),
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        pvno: deserializeParam(
          data['pvno'],
          ParamType.String,
          false,
        ),
        claimDetailId: deserializeParam(
          data['claimDetailId'],
          ParamType.String,
          false,
        ),
        claimTypeId: deserializeParam(
          data['claimTypeId'],
          ParamType.String,
          false,
        ),
        claimTypename: deserializeParam(
          data['claimTypename'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        totalRate: deserializeParam(
          data['totalRate'],
          ParamType.double,
          false,
        ),
        noInvoice: deserializeParam(
          data['noInvoice'],
          ParamType.String,
          false,
        ),
        imageurl: deserializeParam(
          data['imageurl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClaimStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClaimStruct &&
        claimId == other.claimId &&
        date == other.date &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        status == other.status &&
        loccode == other.loccode &&
        deptId == other.deptId &&
        postId == other.postId &&
        postDesc == other.postDesc &&
        year == other.year &&
        period == other.period &&
        remark == other.remark &&
        time == other.time &&
        pvno == other.pvno &&
        claimDetailId == other.claimDetailId &&
        claimTypeId == other.claimTypeId &&
        claimTypename == other.claimTypename &&
        position == other.position &&
        totalRate == other.totalRate &&
        noInvoice == other.noInvoice &&
        imageurl == other.imageurl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        claimId,
        date,
        staffId,
        staffName,
        status,
        loccode,
        deptId,
        postId,
        postDesc,
        year,
        period,
        remark,
        time,
        pvno,
        claimDetailId,
        claimTypeId,
        claimTypename,
        position,
        totalRate,
        noInvoice,
        imageurl
      ]);
}

ClaimStruct createClaimStruct({
  String? claimId,
  String? date,
  String? staffId,
  String? staffName,
  String? status,
  String? loccode,
  String? deptId,
  String? postId,
  String? postDesc,
  String? year,
  String? period,
  String? remark,
  String? time,
  String? pvno,
  String? claimDetailId,
  String? claimTypeId,
  String? claimTypename,
  String? position,
  double? totalRate,
  String? noInvoice,
  String? imageurl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClaimStruct(
      claimId: claimId,
      date: date,
      staffId: staffId,
      staffName: staffName,
      status: status,
      loccode: loccode,
      deptId: deptId,
      postId: postId,
      postDesc: postDesc,
      year: year,
      period: period,
      remark: remark,
      time: time,
      pvno: pvno,
      claimDetailId: claimDetailId,
      claimTypeId: claimTypeId,
      claimTypename: claimTypename,
      position: position,
      totalRate: totalRate,
      noInvoice: noInvoice,
      imageurl: imageurl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClaimStruct? updateClaimStruct(
  ClaimStruct? claim, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    claim
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClaimStructData(
  Map<String, dynamic> firestoreData,
  ClaimStruct? claim,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (claim == null) {
    return;
  }
  if (claim.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && claim.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final claimData = getClaimFirestoreData(claim, forFieldValue);
  final nestedData = claimData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = claim.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClaimFirestoreData(
  ClaimStruct? claim, [
  bool forFieldValue = false,
]) {
  if (claim == null) {
    return {};
  }
  final firestoreData = mapToFirestore(claim.toMap());

  // Add any Firestore field values
  claim.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClaimListFirestoreData(
  List<ClaimStruct>? claims,
) =>
    claims?.map((e) => getClaimFirestoreData(e, true)).toList() ?? [];
