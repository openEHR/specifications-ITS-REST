part of swagger.api;

class DvTime {
  
  String type = "DV_TIME";

  DvDuration accuracy = null;

  String value = null;

  DvTime();

  @override
  String toString() {
    return 'DvTime[type=$type, accuracy=$accuracy, value=$value, ]';
  }

  DvTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracy = new DvDuration.fromJson(json['accuracy']);
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy': accuracy,
      'value': value
     };
  }

  static List<DvTime> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvTime>() : json.map((value) => new DvTime.fromJson(value)).toList();
  }

  static Map<String, DvTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvTime.fromJson(value));
    }
    return map;
  }
}
