part of swagger.api;

class History {
  
  DvText name = null;

  String archetypeNodeId = null;

  UidBasedId uid = null;

  List<Link> links = [];

  Archetyped archetypeDetails = null;

  FeederAudit feederAudit = null;

  String type = "HISTORY";

  DvDateTime origin = null;

  DvDuration period = null;

  DvDuration duration = null;

  ItemStructure summary = null;

  List<Event> events = [];

  History();

  @override
  String toString() {
    return 'History[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type, origin=$origin, period=$period, duration=$duration, summary=$summary, events=$events, ]';
  }

  History.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = new DvText.fromJson(json['name']);
    archetypeNodeId = json['archetype_node_id'];
    uid = new UidBasedId.fromJson(json['uid']);
    links = Link.listFromJson(json['links']);
    archetypeDetails = new Archetyped.fromJson(json['archetype_details']);
    feederAudit = new FeederAudit.fromJson(json['feeder_audit']);
    type = json['_type'];
    origin = new DvDateTime.fromJson(json['origin']);
    period = new DvDuration.fromJson(json['period']);
    duration = new DvDuration.fromJson(json['duration']);
    summary = new ItemStructure.fromJson(json['summary']);
    events = Event.listFromJson(json['events']);
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
      'origin': origin,
      'period': period,
      'duration': duration,
      'summary': summary,
      'events': events
     };
  }

  static List<History> listFromJson(List<dynamic> json) {
    return json == null ? new List<History>() : json.map((value) => new History.fromJson(value)).toList();
  }

  static Map<String, History> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, History>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new History.fromJson(value));
    }
    return map;
  }
}
