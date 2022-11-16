part of swagger.api;

class DvEhrUri {
  
  String type = "DV_EHR_URI";

  String value = null;

  DvEhrUri();

  @override
  String toString() {
    return 'DvEhrUri[type=$type, value=$value, ]';
  }

  DvEhrUri.fromJson(Map<String, dynamic> json) {
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

  static List<DvEhrUri> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvEhrUri>() : json.map((value) => new DvEhrUri.fromJson(value)).toList();
  }

  static Map<String, DvEhrUri> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvEhrUri>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvEhrUri.fromJson(value));
    }
    return map;
  }
}
