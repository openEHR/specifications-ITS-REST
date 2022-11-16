part of swagger.api;

class DvDuration {
  
  String type = "DV_DURATION";

  bool accuracyIsPercent = null;

  double accuracy = null;

  DvDuration();

  @override
  String toString() {
    return 'DvDuration[type=$type, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy, ]';
  }

  DvDuration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracyIsPercent = json['accuracy_is_percent'];
    accuracy = json['accuracy'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy_is_percent': accuracyIsPercent,
      'accuracy': accuracy
     };
  }

  static List<DvDuration> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvDuration>() : json.map((value) => new DvDuration.fromJson(value)).toList();
  }

  static Map<String, DvDuration> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvDuration>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvDuration.fromJson(value));
    }
    return map;
  }
}
