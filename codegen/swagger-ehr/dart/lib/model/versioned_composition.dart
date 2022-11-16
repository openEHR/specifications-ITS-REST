part of swagger.api;

class VersionedComposition {
  
  String type = "VERSIONED_COMPOSITION";

  HierObjectId uid = null;

  ObjectRef ownerId = null;

  DvDateTime timeCreated = null;

  VersionedComposition();

  @override
  String toString() {
    return 'VersionedComposition[type=$type, uid=$uid, ownerId=$ownerId, timeCreated=$timeCreated, ]';
  }

  VersionedComposition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    uid = new HierObjectId.fromJson(json['uid']);
    ownerId = new ObjectRef.fromJson(json['owner_id']);
    timeCreated = new DvDateTime.fromJson(json['time_created']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'uid': uid,
      'owner_id': ownerId,
      'time_created': timeCreated
     };
  }

  static List<VersionedComposition> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionedComposition>() : json.map((value) => new VersionedComposition.fromJson(value)).toList();
  }

  static Map<String, VersionedComposition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionedComposition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionedComposition.fromJson(value));
    }
    return map;
  }
}
