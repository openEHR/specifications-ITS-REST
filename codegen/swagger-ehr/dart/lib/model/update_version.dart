part of swagger.api;

class UpdateVersion {
  
  ObjectVersionId precedingVersionUid = null;

  String signature = null;

  TerminologyCode lifecycleState = null;

  List<UpdateAttestation> attestations = [];

  Versionable data = null;

  UpdateAudit commitAudit = null;

  UpdateVersion();

  @override
  String toString() {
    return 'UpdateVersion[precedingVersionUid=$precedingVersionUid, signature=$signature, lifecycleState=$lifecycleState, attestations=$attestations, data=$data, commitAudit=$commitAudit, ]';
  }

  UpdateVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    precedingVersionUid = new ObjectVersionId.fromJson(json['preceding_version_uid']);
    signature = json['signature'];
    lifecycleState = new TerminologyCode.fromJson(json['lifecycle_state']);
    attestations = UpdateAttestation.listFromJson(json['attestations']);
    data = new Versionable.fromJson(json['data']);
    commitAudit = new UpdateAudit.fromJson(json['commit_audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'preceding_version_uid': precedingVersionUid,
      'signature': signature,
      'lifecycle_state': lifecycleState,
      'attestations': attestations,
      'data': data,
      'commit_audit': commitAudit
     };
  }

  static List<UpdateVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateVersion>() : json.map((value) => new UpdateVersion.fromJson(value)).toList();
  }

  static Map<String, UpdateVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateVersion.fromJson(value));
    }
    return map;
  }
}
