part of swagger.api;

class InstructionDetails {
  
  String type = "INSTRUCTION_DETAILS";

  LocatableRef instructionId = null;

  String activityId = null;

  ItemStructure wfDetails = null;

  InstructionDetails();

  @override
  String toString() {
    return 'InstructionDetails[type=$type, instructionId=$instructionId, activityId=$activityId, wfDetails=$wfDetails, ]';
  }

  InstructionDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    instructionId = new LocatableRef.fromJson(json['instruction_id']);
    activityId = json['activity_id'];
    wfDetails = new ItemStructure.fromJson(json['wf_details']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'instruction_id': instructionId,
      'activity_id': activityId,
      'wf_details': wfDetails
     };
  }

  static List<InstructionDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstructionDetails>() : json.map((value) => new InstructionDetails.fromJson(value)).toList();
  }

  static Map<String, InstructionDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstructionDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstructionDetails.fromJson(value));
    }
    return map;
  }
}
