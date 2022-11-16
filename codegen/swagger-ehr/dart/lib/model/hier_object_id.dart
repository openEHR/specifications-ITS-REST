part of swagger.api;

class HierObjectId {
  
  String type = "UID_BASED_ID";

  String value = null;

  HierObjectId();

  @override
  String toString() {
    return 'HierObjectId[type=$type, value=$value, ]';
  }

  HierObjectId.fromJson(Map<String, dynamic> json) {
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

  static List<HierObjectId> listFromJson(List<dynamic> json) {
    return json == null ? new List<HierObjectId>() : json.map((value) => new HierObjectId.fromJson(value)).toList();
  }

  static Map<String, HierObjectId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HierObjectId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HierObjectId.fromJson(value));
    }
    return map;
  }
}
