part of swagger.api;

class Ehr {
  
  HierObjectId systemId = null;

  HierObjectId ehrId = null;

  ObjectRef ehrStatus = null;

  ObjectRef ehrAccess = null;

  DvDateTime timeCreated = null;

  Ehr();

  @override
  String toString() {
    return 'Ehr[systemId=$systemId, ehrId=$ehrId, ehrStatus=$ehrStatus, ehrAccess=$ehrAccess, timeCreated=$timeCreated, ]';
  }

  Ehr.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    systemId = new HierObjectId.fromJson(json['system_id']);
    ehrId = new HierObjectId.fromJson(json['ehr_id']);
    ehrStatus = new ObjectRef.fromJson(json['ehr_status']);
    ehrAccess = new ObjectRef.fromJson(json['ehr_access']);
    timeCreated = new DvDateTime.fromJson(json['time_created']);
  }

  Map<String, dynamic> toJson() {
    return {
      'system_id': systemId,
      'ehr_id': ehrId,
      'ehr_status': ehrStatus,
      'ehr_access': ehrAccess,
      'time_created': timeCreated
     };
  }

  static List<Ehr> listFromJson(List<dynamic> json) {
    return json == null ? new List<Ehr>() : json.map((value) => new Ehr.fromJson(value)).toList();
  }

  static Map<String, Ehr> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Ehr>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Ehr.fromJson(value));
    }
    return map;
  }
}
