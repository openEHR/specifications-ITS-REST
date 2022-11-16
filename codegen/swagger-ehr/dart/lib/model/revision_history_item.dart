part of swagger.api;

class RevisionHistoryItem {
  
  ObjectVersionId versionId = null;

  List<AuditDetails> audits = [];

  RevisionHistoryItem();

  @override
  String toString() {
    return 'RevisionHistoryItem[versionId=$versionId, audits=$audits, ]';
  }

  RevisionHistoryItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    versionId = new ObjectVersionId.fromJson(json['version_id']);
    audits = AuditDetails.listFromJson(json['audits']);
  }

  Map<String, dynamic> toJson() {
    return {
      'version_id': versionId,
      'audits': audits
     };
  }

  static List<RevisionHistoryItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<RevisionHistoryItem>() : json.map((value) => new RevisionHistoryItem.fromJson(value)).toList();
  }

  static Map<String, RevisionHistoryItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RevisionHistoryItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RevisionHistoryItem.fromJson(value));
    }
    return map;
  }
}
