part of swagger.api;

class Observation {
  
  ItemStructure protocol = null;

  ObjectRef guidelineId = null;

  String type = "OBSERVATION";

  History data = null;

  History state = null;

  Observation();

  @override
  String toString() {
    return 'Observation[protocol=$protocol, guidelineId=$guidelineId, type=$type, data=$data, state=$state, ]';
  }

  Observation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocol = new ItemStructure.fromJson(json['protocol']);
    guidelineId = new ObjectRef.fromJson(json['guideline_id']);
    type = json['_type'];
    data = new History.fromJson(json['data']);
    state = new History.fromJson(json['state']);
  }

  Map<String, dynamic> toJson() {
    return {
      'protocol': protocol,
      'guideline_id': guidelineId,
      '_type': type,
      'data': data,
      'state': state
     };
  }

  static List<Observation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Observation>() : json.map((value) => new Observation.fromJson(value)).toList();
  }

  static Map<String, Observation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Observation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Observation.fromJson(value));
    }
    return map;
  }
}
