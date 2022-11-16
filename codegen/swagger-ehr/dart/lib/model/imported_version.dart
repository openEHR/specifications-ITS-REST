part of swagger.api;

class ImportedVersion {
  
  String type = "IMPORTED_VERSION";

  ObjectRef contribution = null;

  String signature = null;

  AuditDetails commitAudit = null;

  Versionable data = null;

  OriginalVersion item = null;

  ImportedVersion();

  @override
  String toString() {
    return 'ImportedVersion[type=$type, contribution=$contribution, signature=$signature, commitAudit=$commitAudit, data=$data, item=$item, ]';
  }

  ImportedVersion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    contribution = new ObjectRef.fromJson(json['contribution']);
    signature = json['signature'];
    commitAudit = new AuditDetails.fromJson(json['commit_audit']);
    data = new Versionable.fromJson(json['data']);
    item = new OriginalVersion.fromJson(json['item']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'contribution': contribution,
      'signature': signature,
      'commit_audit': commitAudit,
      'data': data,
      'item': item
     };
  }

  static List<ImportedVersion> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImportedVersion>() : json.map((value) => new ImportedVersion.fromJson(value)).toList();
  }

  static Map<String, ImportedVersion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImportedVersion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImportedVersion.fromJson(value));
    }
    return map;
  }
}
