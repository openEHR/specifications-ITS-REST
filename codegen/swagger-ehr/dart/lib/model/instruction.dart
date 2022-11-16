part of swagger.api;

class Instruction {
  
  ItemStructure protocol = null;

  ObjectRef guidelineId = null;

  String type = "INSTRUCTION";

  DvText narrative = null;

  DvDateTime expiryTime = null;

  DvParsable wfDefinition = null;

  List<Activity> activities = [];

  Instruction();

  @override
  String toString() {
    return 'Instruction[protocol=$protocol, guidelineId=$guidelineId, type=$type, narrative=$narrative, expiryTime=$expiryTime, wfDefinition=$wfDefinition, activities=$activities, ]';
  }

  Instruction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocol = new ItemStructure.fromJson(json['protocol']);
    guidelineId = new ObjectRef.fromJson(json['guideline_id']);
    type = json['_type'];
    narrative = new DvText.fromJson(json['narrative']);
    expiryTime = new DvDateTime.fromJson(json['expiry_time']);
    wfDefinition = new DvParsable.fromJson(json['wf_definition']);
    activities = Activity.listFromJson(json['activities']);
  }

  Map<String, dynamic> toJson() {
    return {
      'protocol': protocol,
      'guideline_id': guidelineId,
      '_type': type,
      'narrative': narrative,
      'expiry_time': expiryTime,
      'wf_definition': wfDefinition,
      'activities': activities
     };
  }

  static List<Instruction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Instruction>() : json.map((value) => new Instruction.fromJson(value)).toList();
  }

  static Map<String, Instruction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Instruction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Instruction.fromJson(value));
    }
    return map;
  }
}
