part of swagger.api;

class IsmTransition {
  
  String type = "ISM_TRANSITION";

  DvCodedText currentState = null;

  DvCodedText transition = null;

  DvCodedText careflowStep = null;

  List<DvText> reason = [];

  IsmTransition();

  @override
  String toString() {
    return 'IsmTransition[type=$type, currentState=$currentState, transition=$transition, careflowStep=$careflowStep, reason=$reason, ]';
  }

  IsmTransition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    currentState = new DvCodedText.fromJson(json['current_state']);
    transition = new DvCodedText.fromJson(json['transition']);
    careflowStep = new DvCodedText.fromJson(json['careflow_step']);
    reason = DvText.listFromJson(json['reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'current_state': currentState,
      'transition': transition,
      'careflow_step': careflowStep,
      'reason': reason
     };
  }

  static List<IsmTransition> listFromJson(List<dynamic> json) {
    return json == null ? new List<IsmTransition>() : json.map((value) => new IsmTransition.fromJson(value)).toList();
  }

  static Map<String, IsmTransition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IsmTransition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IsmTransition.fromJson(value));
    }
    return map;
  }
}
