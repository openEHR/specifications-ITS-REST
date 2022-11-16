part of swagger.api;

class ItemStructure {
  
  String type = null;

  ItemStructure();

  @override
  String toString() {
    return 'ItemStructure[type=$type, ]';
  }

  ItemStructure.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type
     };
  }

  static List<ItemStructure> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemStructure>() : json.map((value) => new ItemStructure.fromJson(value)).toList();
  }

  static Map<String, ItemStructure> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemStructure>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemStructure.fromJson(value));
    }
    return map;
  }
}
