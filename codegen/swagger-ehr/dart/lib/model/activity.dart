part of swagger.api;

class Activity {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  String type = "ACTIVITY";

  DvParsable timing = null;

  String actionArchetypeId = null;

  ItemStructure description = null;

  Activity();

  @override
  String toString() {
    return 'Activity[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type, timing=$timing, actionArchetypeId=$actionArchetypeId, description=$description, ]';
  }

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
    type = json['_type'];
    timing = new DvParsable.fromJson(json['timing']);
    actionArchetypeId = json['action_archetype_id'];
    description = new ItemStructure.fromJson(json['description']);
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
      'timing': timing,
      'action_archetype_id': actionArchetypeId,
      'description': description
     };
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Activity>() : json.map((value) => new Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Activity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Activity.fromJson(value));
    }
    return map;
  }
}
