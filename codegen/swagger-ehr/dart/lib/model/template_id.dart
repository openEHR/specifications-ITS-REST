part of swagger.api;

class TemplateId {
  
  String type = "TEMPLATE_ID";

  String value = null;

  TemplateId();

  @override
  String toString() {
    return 'TemplateId[type=$type, value=$value, ]';
  }

  TemplateId.fromJson(Map<String, dynamic> json) {
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

  static List<TemplateId> listFromJson(List<dynamic> json) {
    return json == null ? new List<TemplateId>() : json.map((value) => new TemplateId.fromJson(value)).toList();
  }

  static Map<String, TemplateId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TemplateId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TemplateId.fromJson(value));
    }
    return map;
  }
}
