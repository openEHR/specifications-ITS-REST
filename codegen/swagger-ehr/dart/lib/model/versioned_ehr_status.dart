part of swagger.api;

class VersionedEhrStatus {
  
  String type = "VERSIONED_EHR_STATUS";

  HierObjectId uid = null;

  ObjectRef ownerId = null;

  DvDateTime timeCreated = null;

  VersionedEhrStatus();

  @override
  String toString() {
    return 'VersionedEhrStatus[type=$type, uid=$uid, ownerId=$ownerId, timeCreated=$timeCreated, ]';
  }

  VersionedEhrStatus.fromJson(Map<String, dynamic> json) {
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

  static List<VersionedEhrStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionedEhrStatus>() : json.map((value) => new VersionedEhrStatus.fromJson(value)).toList();
  }

  static Map<String, VersionedEhrStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionedEhrStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionedEhrStatus.fromJson(value));
    }
    return map;
  }
}
