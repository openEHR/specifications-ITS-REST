part of swagger.api;

class DvUri {
  
  String type = "DV_URI";

  String value = null;

  DvUri();

  @override
  String toString() {
    return 'DvUri[type=$type, value=$value, ]';
  }

  DvUri.fromJson(Map<String, dynamic> json) {
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

  static List<DvUri> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvUri>() : json.map((value) => new DvUri.fromJson(value)).toList();
  }

  static Map<String, DvUri> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvUri>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvUri.fromJson(value));
    }
    return map;
  }
}
