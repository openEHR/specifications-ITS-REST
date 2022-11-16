part of swagger.api;

class Versionable {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  Versionable();

  @override
  String toString() {
    return 'Versionable[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, ]';
  }

  Versionable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'archetype_node_id': archetypeNodeId,
      'uid': uid,
      'links': links,
      'archetype_details': archetypeDetails,
      'feeder_audit': feederAudit
     };
  }

  static List<Versionable> listFromJson(List<dynamic> json) {
    return json == null ? new List<Versionable>() : json.map((value) => new Versionable.fromJson(value)).toList();
  }

  static Map<String, Versionable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Versionable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Versionable.fromJson(value));
    }
    return map;
  }
}
