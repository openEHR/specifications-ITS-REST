part of swagger.api;

class DvTemporal {
  
  String type = "DV_TEMPORAL";

  String magnitudeStatus = "=";

  DvDuration accuracy = null;

  DvTemporal();

  @override
  String toString() {
    return 'DvTemporal[type=$type, magnitudeStatus=$magnitudeStatus, accuracy=$accuracy, ]';
  }

  DvTemporal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    magnitudeStatus = json['magnitude_status'];
    accuracy = new DvDuration.fromJson(json['accuracy']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'magnitude_status': magnitudeStatus,
      'accuracy': accuracy
     };
  }

  static List<DvTemporal> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvTemporal>() : json.map((value) => new DvTemporal.fromJson(value)).toList();
  }

  static Map<String, DvTemporal> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvTemporal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvTemporal.fromJson(value));
    }
    return map;
  }
}
