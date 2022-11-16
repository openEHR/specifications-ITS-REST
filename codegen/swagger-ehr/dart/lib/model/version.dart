part of swagger.api;

class Version {
  
  String type = null;

  ObjectRef contribution = null;

  String signature = null;

  AuditDetails commitAudit = null;

  Versionable data = null;

  Version();

  @override
  String toString() {
    return 'Version[type=$type, contribution=$contribution, signature=$signature, commitAudit=$commitAudit, data=$data, ]';
  }

  Version.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    contribution = new ObjectRef.fromJson(json['contribution']);
    signature = json['signature'];
    commitAudit = new AuditDetails.fromJson(json['commit_audit']);
    data = new Versionable.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'contribution': contribution,
      'signature': signature,
      'commit_audit': commitAudit,
      'data': data
     };
  }

  static List<Version> listFromJson(List<dynamic> json) {
    return json == null ? new List<Version>() : json.map((value) => new Version.fromJson(value)).toList();
  }

  static Map<String, Version> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Version>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Version.fromJson(value));
    }
    return map;
  }
}
