part of swagger.api;

class DvDateTime {
  
  String type = "DV_DATE_TIME";

  DateTime value = null;

  DvDateTime();

  @override
  String toString() {
    return 'DvDateTime[type=$type, value=$value, ]';
  }

  DvDateTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'] == null ? null : DateTime.parse(json['value']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value == null ? '' : value.toUtc().toIso8601String()
     };
  }

  static List<DvDateTime> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvDateTime>() : json.map((value) => new DvDateTime.fromJson(value)).toList();
  }

  static Map<String, DvDateTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvDateTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvDateTime.fromJson(value));
    }
    return map;
  }
}
