part of swagger.api;

class Clstr {
  
  String type = "CLUSTER";

  List<Item> items = [];

  Clstr();

  @override
  String toString() {
    return 'Clstr[type=$type, items=$items, ]';
  }

  Clstr.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    items = Item.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'items': items
     };
  }

  static List<Clstr> listFromJson(List<dynamic> json) {
    return json == null ? new List<Clstr>() : json.map((value) => new Clstr.fromJson(value)).toList();
  }

  static Map<String, Clstr> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Clstr>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Clstr.fromJson(value));
    }
    return map;
  }
}
