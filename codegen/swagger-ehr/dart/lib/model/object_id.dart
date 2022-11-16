part of swagger.api;

class ObjectId {
  
  String type = null;

  String value = null;

  ObjectId();

  @override
  String toString() {
    return 'ObjectId[type=$type, value=$value, ]';
  }

  ObjectId.fromJson(Map<String, dynamic> json) {
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

  static List<ObjectId> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectId>() : json.map((value) => new ObjectId.fromJson(value)).toList();
  }

  static Map<String, ObjectId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectId.fromJson(value));
    }
    return map;
  }
}
