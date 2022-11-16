part of swagger.api;

class UidBasedId {
  
  String type = "UID_BASED_ID";

  String value = null;

  UidBasedId();

  @override
  String toString() {
    return 'UidBasedId[type=$type, value=$value, ]';
  }

  UidBasedId.fromJson(Map<String, dynamic> json) {
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

  static List<UidBasedId> listFromJson(List<dynamic> json) {
    return json == null ? new List<UidBasedId>() : json.map((value) => new UidBasedId.fromJson(value)).toList();
  }

  static Map<String, UidBasedId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UidBasedId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UidBasedId.fromJson(value));
    }
    return map;
  }
}
