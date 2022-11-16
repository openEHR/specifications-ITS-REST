part of swagger.api;

class DataValue {
  
  String type = null;

  DataValue();

  @override
  String toString() {
    return 'DataValue[type=$type, ]';
  }

  DataValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type
     };
  }

  static List<DataValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataValue>() : json.map((value) => new DataValue.fromJson(value)).toList();
  }

  static Map<String, DataValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataValue.fromJson(value));
    }
    return map;
  }
}
