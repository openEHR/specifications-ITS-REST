part of swagger.api;

class DataStructure {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  String type = "DATE_STRUCTURE";

  DataStructure();

  @override
  String toString() {
    return 'DataStructure[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type, ]';
  }

  DataStructure.fromJson(Map<String, dynamic> json) {
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

  static List<DataStructure> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataStructure>() : json.map((value) => new DataStructure.fromJson(value)).toList();
  }

  static Map<String, DataStructure> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataStructure>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataStructure.fromJson(value));
    }
    return map;
  }
}
