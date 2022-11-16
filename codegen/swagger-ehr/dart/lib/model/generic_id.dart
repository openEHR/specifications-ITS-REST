part of swagger.api;

class GenericId {
  
  String type = "GENERIC_ID";

  String value = null;

  String scheme = null;

  GenericId();

  @override
  String toString() {
    return 'GenericId[type=$type, value=$value, scheme=$scheme, ]';
  }

  GenericId.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'];
    scheme = json['scheme'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value,
      'scheme': scheme
     };
  }

  static List<GenericId> listFromJson(List<dynamic> json) {
    return json == null ? new List<GenericId>() : json.map((value) => new GenericId.fromJson(value)).toList();
  }

  static Map<String, GenericId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GenericId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GenericId.fromJson(value));
    }
    return map;
  }
}
