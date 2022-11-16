part of swagger.api;

class ItemTable {
  
  String type = "ITEM_TABLE";

  List<Clstr> items = [];

  ItemTable();

  @override
  String toString() {
    return 'ItemTable[type=$type, items=$items, ]';
  }

  ItemTable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    items = Clstr.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'items': items
     };
  }

  static List<ItemTable> listFromJson(List<dynamic> json) {
    return json == null ? new List<ItemTable>() : json.map((value) => new ItemTable.fromJson(value)).toList();
  }

  static Map<String, ItemTable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ItemTable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ItemTable.fromJson(value));
    }
    return map;
  }
}
