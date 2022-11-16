part of swagger.api;

class ContentItem {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  ContentItem();

  @override
  String toString() {
    return 'ContentItem[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, ]';
  }

  ContentItem.fromJson(Map<String, dynamic> json) {
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

  static List<ContentItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<ContentItem>() : json.map((value) => new ContentItem.fromJson(value)).toList();
  }

  static Map<String, ContentItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ContentItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ContentItem.fromJson(value));
    }
    return map;
  }
}
