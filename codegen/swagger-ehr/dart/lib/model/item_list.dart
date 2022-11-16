part of swagger.api;

class ItemList {
  
  String type = "ITEM_LIST";

  List<Element> items = [];

  ItemList();

  @override
  String toString() {
    return 'ItemList[type=$type, items=$items, ]';
  }

  ItemList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    items = Element.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'items': items
     };
  }

  static List<ItemList> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemList>() : json.map((value) => new ItemList.fromJson(value)).toList();
  }

  static Map<String, ItemList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemList.fromJson(value));
    }
    return map;
  }
}
