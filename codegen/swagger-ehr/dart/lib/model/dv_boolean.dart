part of swagger.api;

class DvBoolean {
  
  String type = "DV_BOOLEAN";

  bool value = null;

  DvBoolean();

  @override
  String toString() {
    return 'DvBoolean[type=$type, value=$value, ]';
  }

  DvBoolean.fromJson(Map<String, dynamic> json) {
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

  static List<DvBoolean> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvBoolean>() : json.map((value) => new DvBoolean.fromJson(value)).toList();
  }

  static Map<String, DvBoolean> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvBoolean>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvBoolean.fromJson(value));
    }
    return map;
  }
}
