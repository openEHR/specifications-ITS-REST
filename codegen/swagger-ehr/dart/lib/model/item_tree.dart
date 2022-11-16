part of swagger.api;

class ItemTree {
  
  String type = "ITEM_TREE";

  List<Item> items = [];

  ItemTree();

  @override
  String toString() {
    return 'ItemTree[type=$type, items=$items, ]';
  }

  ItemTree.fromJson(Map<String, dynamic> json) {
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

  static List<ItemTree> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemTree>() : json.map((value) => new ItemTree.fromJson(value)).toList();
  }

  static Map<String, ItemTree> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemTree>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemTree.fromJson(value));
    }
    return map;
  }
}
