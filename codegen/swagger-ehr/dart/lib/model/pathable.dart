part of swagger.api;

class Pathable {
  
  String type = null;

  Pathable();

  @override
  String toString() {
    return 'Pathable[type=$type, ]';
  }

  Pathable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type
     };
  }

  static List<Pathable> listFromJson(List<dynamic> json) {
    return json == null ? new List<Pathable>() : json.map((value) => new Pathable.fromJson(value)).toList();
  }

  static Map<String, Pathable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Pathable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Pathable.fromJson(value));
    }
    return map;
  }
}
