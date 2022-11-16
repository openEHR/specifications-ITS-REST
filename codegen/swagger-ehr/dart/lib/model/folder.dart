part of swagger.api;

class Folder {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  String type = "FOLDER";

  List<ObjectRef> items = [];

  List<Folder> folders = [];

  ItemStructure details = null;

  Folder();

  @override
  String toString() {
    return 'Folder[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type, items=$items, folders=$folders, details=$details, ]';
  }

  Folder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
    type = json['_type'];
    items = ObjectRef.listFromJson(json['items']);
    folders = Folder.listFromJson(json['folders']);
    details = new ItemStructure.fromJson(json['details']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'archetype_node_id': archetypeNodeId,
      'uid': uid,
      'links': links,
      'archetype_details': archetypeDetails,
      'feeder_audit': feederAudit,
      '_type': type,
      'items': items,
      'folders': folders,
      'details': details
     };
  }

  static List<Folder> listFromJson(List<dynamic> json) {
    return json == null ? new List<Folder>() : json.map((value) => new Folder.fromJson(value)).toList();
  }

  static Map<String, Folder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Folder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Folder.fromJson(value));
    }
    return map;
  }
}
