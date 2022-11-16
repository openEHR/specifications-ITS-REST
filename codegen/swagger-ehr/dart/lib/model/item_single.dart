part of swagger.api;

class ItemSingle {
  
  String type = "ITEM_SINGLE";

  Element item = null;

  ItemSingle();

  @override
  String toString() {
    return 'ItemSingle[type=$type, item=$item, ]';
  }

  ItemSingle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    item = new Element.fromJson(json['item']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'item': item
     };
  }

  static List<ItemSingle> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemSingle>() : json.map((value) => new ItemSingle.fromJson(value)).toList();
  }

  static Map<String, ItemSingle> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemSingle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemSingle.fromJson(value));
    }
    return map;
  }
}
