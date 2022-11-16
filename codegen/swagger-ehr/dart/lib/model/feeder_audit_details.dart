part of swagger.api;

class FeederAuditDetails {
  
  String systemId = null;

  PartyIdentified location = null;

  PartyProxy subject = null;

  PartyIdentified provider = null;

  DvDateTime time = null;

  String versionId = null;

  ItemStructure otherDetails = null;

  FeederAuditDetails();

  @override
  String toString() {
    return 'FeederAuditDetails[systemId=$systemId, location=$location, subject=$subject, provider=$provider, time=$time, versionId=$versionId, otherDetails=$otherDetails, ]';
  }

  FeederAuditDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    systemId = json['system_id'];
    location = new PartyIdentified.fromJson(json['location']);
    subject = new PartyProxy.fromJson(json['subject']);
    provider = new PartyIdentified.fromJson(json['provider']);
    time = new DvDateTime.fromJson(json['time']);
    versionId = json['version_id'];
    otherDetails = new ItemStructure.fromJson(json['other_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'system_id': systemId,
      'location': location,
      'subject': subject,
      'provider': provider,
      'time': time,
      'version_id': versionId,
      'other_details': otherDetails
     };
  }

  static List<FeederAuditDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<FeederAuditDetails>() : json.map((value) => new FeederAuditDetails.fromJson(value)).toList();
  }

  static Map<String, FeederAuditDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FeederAuditDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeederAuditDetails.fromJson(value));
    }
    return map;
  }
}
