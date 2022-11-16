part of swagger.api;

class Action {
  
  ItemStructure protocol = null;

  ObjectRef guidelineId = null;

  String type = "ACTION";

  DvDateTime time = null;

  IsmTransition ismTransition = null;

  InstructionDetails instructionDetails = null;

  ItemStructure description = null;

  Action();

  @override
  String toString() {
    return 'Action[protocol=$protocol, guidelineId=$guidelineId, type=$type, time=$time, ismTransition=$ismTransition, instructionDetails=$instructionDetails, description=$description, ]';
  }

  Action.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocol = new ItemStructure.fromJson(json['protocol']);
    guidelineId = new ObjectRef.fromJson(json['guideline_id']);
    type = json['_type'];
    time = new DvDateTime.fromJson(json['time']);
    ismTransition = new IsmTransition.fromJson(json['ism_transition']);
    instructionDetails = new InstructionDetails.fromJson(json['instruction_details']);
    description = new ItemStructure.fromJson(json['description']);
  }

  Map<String, dynamic> toJson() {
    return {
      'protocol': protocol,
      'guideline_id': guidelineId,
      '_type': type,
      'time': time,
      'ism_transition': ismTransition,
      'instruction_details': instructionDetails,
      'description': description
     };
  }

  static List<Action> listFromJson(List<dynamic> json) {
    return json == null ? new List<Action>() : json.map((value) => new Action.fromJson(value)).toList();
  }

  static Map<String, Action> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Action>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Action.fromJson(value));
    }
    return map;
  }
}
