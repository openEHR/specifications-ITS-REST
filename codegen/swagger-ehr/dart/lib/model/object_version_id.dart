part of swagger.api;

class ObjectVersionId {
  
  String type = "UID_BASED_ID";

  String value = null;

  ObjectVersionId();

  @override
  String toString() {
    return 'ObjectVersionId[type=$type, value=$value, ]';
  }

  ObjectVersionId.fromJson(Map<String, dynamic> json) {
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

  static List<ObjectVersionId> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectVersionId>() : json.map((value) => new ObjectVersionId.fromJson(value)).toList();
  }

  static Map<String, ObjectVersionId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectVersionId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectVersionId.fromJson(value));
    }
    return map;
  }
}
