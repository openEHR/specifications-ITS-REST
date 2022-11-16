part of swagger.api;

class OriginalVersion {
  
  String type = "ORIGINAL_VERSION";

  ObjectRef contribution = null;

  String signature = null;

  AuditDetails commitAudit = null;

  Versionable data = null;

  ObjectVersionId uid = null;

  ObjectVersionId precedingVersionUid = null;

  List<ObjectVersionId> otherInputVersionUids = [];

  DvCodedText lifecycleState = null;

  List<Attestation> attestations = [];

  OriginalVersion();

  @override
  String toString() {
    return 'OriginalVersion[type=$type, contribution=$contribution, signature=$signature, commitAudit=$commitAudit, data=$data, uid=$uid, precedingVersionUid=$precedingVersionUid, otherInputVersionUids=$otherInputVersionUids, lifecycleState=$lifecycleState, attestations=$attestations, ]';
  }

  OriginalVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    contribution = new ObjectRef.fromJson(json['contribution']);
    signature = json['signature'];
    commitAudit = new AuditDetails.fromJson(json['commit_audit']);
    data = new Versionable.fromJson(json['data']);
    uid = new ObjectVersionId.fromJson(json['uid']);
    precedingVersionUid = new ObjectVersionId.fromJson(json['preceding_version_uid']);
    otherInputVersionUids = ObjectVersionId.listFromJson(json['other_input_version_uids']);
    lifecycleState = new DvCodedText.fromJson(json['lifecycle_state']);
    attestations = Attestation.listFromJson(json['attestations']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'contribution': contribution,
      'signature': signature,
      'commit_audit': commitAudit,
      'data': data,
      'uid': uid,
      'preceding_version_uid': precedingVersionUid,
      'other_input_version_uids': otherInputVersionUids,
      'lifecycle_state': lifecycleState,
      'attestations': attestations
     };
  }

  static List<OriginalVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<OriginalVersion>() : json.map((value) => new OriginalVersion.fromJson(value)).toList();
  }

  static Map<String, OriginalVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OriginalVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OriginalVersion.fromJson(value));
    }
    return map;
  }
}
