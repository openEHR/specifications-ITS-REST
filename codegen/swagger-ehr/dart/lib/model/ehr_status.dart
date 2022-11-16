part of swagger.api;

class EhrStatus {
  
  String type = "EHR_STATUS";

  PartyProxy subject = null;

  bool isQueryable = true;

  bool isModifiable = true;

  ItemStructure otherDetails = null;

  EhrStatus();

  @override
  String toString() {
    return 'EhrStatus[type=$type, subject=$subject, isQueryable=$isQueryable, isModifiable=$isModifiable, otherDetails=$otherDetails, ]';
  }

  EhrStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    subject = new PartyProxy.fromJson(json['subject']);
    isQueryable = json['is_queryable'];
    isModifiable = json['is_modifiable'];
    otherDetails = new ItemStructure.fromJson(json['other_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'subject': subject,
      'is_queryable': isQueryable,
      'is_modifiable': isModifiable,
      'other_details': otherDetails
     };
  }

  static List<EhrStatus> listFromJson(List<dynamic> json) {
    return json == null ? new List<EhrStatus>() : json.map((value) => new EhrStatus.fromJson(value)).toList();
  }

  static Map<String, EhrStatus> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EhrStatus>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EhrStatus.fromJson(value));
    }
    return map;
  }
}
