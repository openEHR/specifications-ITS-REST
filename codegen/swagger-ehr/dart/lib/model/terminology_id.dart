part of swagger.api;

class TerminologyId {
  
  String type = "TERMINOLOGY_ID";

  String value = null;

  TerminologyId();

  @override
  String toString() {
    return 'TerminologyId[type=$type, value=$value, ]';
  }

  TerminologyId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value
     };
  }

  static List<TerminologyId> listFromJson(List<dynamic> json) {
    return json == null ? new List<TerminologyId>() : json.map((value) => new TerminologyId.fromJson(value)).toList();
  }

  static Map<String, TerminologyId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TerminologyId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TerminologyId.fromJson(value));
    }
    return map;
  }
}
