part of swagger.api;

class EventContext {
  
  String type = null;

  DvDateTime startTime = null;

  DvDateTime endTime = null;

  String location = null;

  DvCodedText setting = null;

  ItemStructure otherContext = null;

  PartyIdentified healthCareFacility = null;

  List<Participation> participations = [];

  EventContext();

  @override
  String toString() {
    return 'EventContext[type=$type, startTime=$startTime, endTime=$endTime, location=$location, setting=$setting, otherContext=$otherContext, healthCareFacility=$healthCareFacility, participations=$participations, ]';
  }

  EventContext.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    startTime = new DvDateTime.fromJson(json['start_time']);
    endTime = new DvDateTime.fromJson(json['end_time']);
    location = json['location'];
    setting = new DvCodedText.fromJson(json['setting']);
    otherContext = new ItemStructure.fromJson(json['other_context']);
    healthCareFacility = new PartyIdentified.fromJson(json['health_care_facility']);
    participations = Participation.listFromJson(json['participations']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'start_time': startTime,
      'end_time': endTime,
      'location': location,
      'setting': setting,
      'other_context': otherContext,
      'health_care_facility': healthCareFacility,
      'participations': participations
     };
  }

  static List<EventContext> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventContext>() : json.map((value) => new EventContext.fromJson(value)).toList();
  }

  static Map<String, EventContext> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventContext>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventContext.fromJson(value));
    }
    return map;
  }
}
