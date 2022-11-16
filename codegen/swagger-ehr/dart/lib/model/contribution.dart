part of swagger.api;

class Contribution {
  
  HierObjectId uid = null;

  List<ObjectRef> versions = [];

  AuditDetails audit = null;

  Contribution();

  @override
  String toString() {
    return 'Contribution[uid=$uid, versions=$versions, audit=$audit, ]';
  }

  Contribution.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uid = new HierObjectId.fromJson(json['uid']);
    versions = ObjectRef.listFromJson(json['versions']);
    audit = new AuditDetails.fromJson(json['audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'versions': versions,
      'audit': audit
     };
  }

  static List<Contribution> listFromJson(List<dynamic> json) {
    return json == null ? new List<Contribution>() : json.map((value) => new Contribution.fromJson(value)).toList();
  }

  static Map<String, Contribution> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Contribution>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Contribution.fromJson(value));
    }
    return map;
  }
}
