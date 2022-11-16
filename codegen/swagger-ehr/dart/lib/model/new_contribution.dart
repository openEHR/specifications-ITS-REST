part of swagger.api;

class NewContribution {
  
  HierObjectId uid = null;

  List<UpdateVersion> versions = [];

  UpdateAudit audit = null;

  NewContribution();

  @override
  String toString() {
    return 'NewContribution[uid=$uid, versions=$versions, audit=$audit, ]';
  }

  NewContribution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uid = new HierObjectId.fromJson(json['uid']);
    versions = UpdateVersion.listFromJson(json['versions']);
    audit = new UpdateAudit.fromJson(json['audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'versions': versions,
      'audit': audit
     };
  }

  static List<NewContribution> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewContribution>() : json.map((value) => new NewContribution.fromJson(value)).toList();
  }

  static Map<String, NewContribution> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewContribution>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewContribution.fromJson(value));
    }
    return map;
  }
}
