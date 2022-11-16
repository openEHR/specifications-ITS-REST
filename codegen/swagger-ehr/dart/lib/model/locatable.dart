part of swagger.api;

class Locatable {
  
  String type = null;

  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  Locatable();

  @override
  String toString() {
    return 'Locatable[type=$type, name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, ]';
  }

  Locatable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'name': name,
      'archetype_node_id': archetypeNodeId,
      'uid': uid,
      'links': links,
      'archetype_details': archetypeDetails,
      'feeder_audit': feederAudit
     };
  }

  static List<Locatable> listFromJson(List<dynamic> json) {
    return json == null ? new List<Locatable>() : json.map((value) => new Locatable.fromJson(value)).toList();
  }

  static Map<String, Locatable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Locatable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Locatable.fromJson(value));
    }
    return map;
  }
}
