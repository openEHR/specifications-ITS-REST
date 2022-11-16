part of swagger.api;

class DvAmount {
  
  String type = "DV_AMOUNT";

  String magnitudeStatus = "=";

  bool accuracyIsPercent = null;

  double accuracy = null;

  DvAmount();

  @override
  String toString() {
    return 'DvAmount[type=$type, magnitudeStatus=$magnitudeStatus, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy, ]';
  }

  DvAmount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    magnitudeStatus = json['magnitude_status'];
    accuracyIsPercent = json['accuracy_is_percent'];
    accuracy = json['accuracy'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'magnitude_status': magnitudeStatus,
      'accuracy_is_percent': accuracyIsPercent,
      'accuracy': accuracy
     };
  }

  static List<DvAmount> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvAmount>() : json.map((value) => new DvAmount.fromJson(value)).toList();
  }

  static Map<String, DvAmount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvAmount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvAmount.fromJson(value));
    }
    return map;
  }
}
