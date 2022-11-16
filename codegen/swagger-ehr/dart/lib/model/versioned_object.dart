part of swagger.api;

class VersionedObject {
  
  String type = null;

  HierObjectId uid = null;

  ObjectRef ownerId = null;

  DvDateTime timeCreated = null;

  VersionedObject();

  @override
  String toString() {
    return 'VersionedObject[type=$type, uid=$uid, ownerId=$ownerId, timeCreated=$timeCreated, ]';
  }

  VersionedObject.fromJson(Map<String, dynamic> json) {
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

  static List<VersionedObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionedObject>() : json.map((value) => new VersionedObject.fromJson(value)).toList();
  }

  static Map<String, VersionedObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionedObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionedObject.fromJson(value));
    }
    return map;
  }
}
