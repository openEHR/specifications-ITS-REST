part of swagger.api;

class AuditDetails {
  
  String type = "AUDIT_DETAILS";

  String systemId = null;

  DvDateTime timeCommitted = null;

  DvCodedText changeType = null;

  DvText description = null;

  PartyProxy committer = null;

  AuditDetails();

  @override
  String toString() {
    return 'AuditDetails[type=$type, systemId=$systemId, timeCommitted=$timeCommitted, changeType=$changeType, description=$description, committer=$committer, ]';
  }

  AuditDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    systemId = json['system_id'];
    timeCommitted = new DvDateTime.fromJson(json['time_committed']);
    changeType = new DvCodedText.fromJson(json['change_type']);
    description = new DvText.fromJson(json['description']);
    committer = new PartyProxy.fromJson(json['committer']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'system_id': systemId,
      'time_committed': timeCommitted,
      'change_type': changeType,
      'description': description,
      'committer': committer
     };
  }

  static List<AuditDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuditDetails>() : json.map((value) => new AuditDetails.fromJson(value)).toList();
  }

  static Map<String, AuditDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuditDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuditDetails.fromJson(value));
    }
    return map;
  }
}
