part of swagger.api;

class DvCount {
  
  String type = "DV_COUNT";

  bool accuracyIsPercent = null;

  double accuracy = null;

  int magnitude = null;

  DvCount();

  @override
  String toString() {
    return 'DvCount[type=$type, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy, magnitude=$magnitude, ]';
  }

  DvCount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracyIsPercent = json['accuracy_is_percent'];
    accuracy = json['accuracy'];
    magnitude = json['magnitude'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy_is_percent': accuracyIsPercent,
      'accuracy': accuracy,
      'magnitude': magnitude
     };
  }

  static List<DvCount> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvCount>() : json.map((value) => new DvCount.fromJson(value)).toList();
  }

  static Map<String, DvCount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvCount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvCount.fromJson(value));
    }
    return map;
  }
}
