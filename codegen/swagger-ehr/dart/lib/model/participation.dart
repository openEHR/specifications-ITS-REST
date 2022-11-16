part of swagger.api;

class Participation {
  
  DvText function = null;

  DvCodedText mode = null;

  PartyProxy performer = null;

  DvIntervalOfDateTime time = null;

  Participation();

  @override
  String toString() {
    return 'Participation[function=$function, mode=$mode, performer=$performer, time=$time, ]';
  }

  Participation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    function = new DvText.fromJson(json['function']);
    mode = new DvCodedText.fromJson(json['mode']);
    performer = new PartyProxy.fromJson(json['performer']);
    time = new DvIntervalOfDateTime.fromJson(json['time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'function': function,
      'mode': mode,
      'performer': performer,
      'time': time
     };
  }

  static List<Participation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Participation>() : json.map((value) => new Participation.fromJson(value)).toList();
  }

  static Map<String, Participation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Participation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Participation.fromJson(value));
    }
    return map;
  }
}
