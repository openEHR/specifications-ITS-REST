part of swagger.api;

class ArchetypeId {
  
  String type = "ARCHETYPE_ID";

  String value = null;

  ArchetypeId();

  @override
  String toString() {
    return 'ArchetypeId[type=$type, value=$value, ]';
  }

  ArchetypeId.fromJson(Map<String, dynamic> json) {
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

  static List<ArchetypeId> listFromJson(List<dynamic> json) {
    return json == null ? new List<ArchetypeId>() : json.map((value) => new ArchetypeId.fromJson(value)).toList();
  }

  static Map<String, ArchetypeId> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ArchetypeId>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ArchetypeId.fromJson(value));
    }
    return map;
  }
}
