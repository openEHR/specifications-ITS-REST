part of swagger.api;

class Item {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  String type = null;

  Item();

  @override
  String toString() {
    return 'Item[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type, ]';
  }

  Item.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
    type = json['_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'archetype_node_id': archetypeNodeId,
      'uid': uid,
      'links': links,
      'archetype_details': archetypeDetails,
      'feeder_audit': feederAudit,
      '_type': type
     };
  }

  static List<Item> listFromJson(List<dynamic> json) {
    return json == null ? new List<Item>() : json.map((value) => new Item.fromJson(value)).toList();
  }

  static Map<String, Item> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Item>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Item.fromJson(value));
    }
    return map;
  }
}
