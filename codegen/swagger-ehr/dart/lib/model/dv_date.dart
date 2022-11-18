part of swagger.api;

class DvDate {
  
  String type = "DV_DATE";

  DvDuration accuracy = null;

  DateTime value = null;

  DvDate();

  @override
  String toString() {
    return 'DvDate[type=$type, accuracy=$accuracy, value=$value, ]';
  }

  DvDate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracy = new DvDuration.fromJson(json['accuracy']);
    value = new DateTime.fromJson(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy': accuracy,
      'value': value
     };
  }

  static List<DvDate> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvDate>() : json.map((value) => new DvDate.fromJson(value)).toList();
  }

  static Map<String, DvDate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvDate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvDate.fromJson(value));
    }
    return map;
  }
}
