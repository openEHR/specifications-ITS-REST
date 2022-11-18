part of swagger.api;

class DvState {
  
  String type = "DV_STATE";

  DvCodedText value = null;

  bool isTerminal = null;

  DvState();

  @override
  String toString() {
    return 'DvState[type=$type, value=$value, isTerminal=$isTerminal, ]';
  }

  DvState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = new DvCodedText.fromJson(json['value']);
    isTerminal = json['is_terminal'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value,
      'is_terminal': isTerminal
     };
  }

  static List<DvState> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvState>() : json.map((value) => new DvState.fromJson(value)).toList();
  }

  static Map<String, DvState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvState.fromJson(value));
    }
    return map;
  }
}
