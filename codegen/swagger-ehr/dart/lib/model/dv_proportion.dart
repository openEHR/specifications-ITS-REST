part of swagger.api;

class DvProportion {
  
  String type = "DV_PROPORTION";

  bool accuracyIsPercent = null;

  double accuracy = null;

  double numerator = null;

  double denominator = null;

  int semanticType = null;

  int precision = null;

  DvProportion();

  @override
  String toString() {
    return 'DvProportion[type=$type, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy, numerator=$numerator, denominator=$denominator, semanticType=$semanticType, precision=$precision, ]';
  }

  DvProportion.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracyIsPercent = json['accuracy_is_percent'];
    accuracy = json['accuracy'];
    numerator = json['numerator'];
    denominator = json['denominator'];
    semanticType = json['semantic_type'];
    precision = json['precision'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy_is_percent': accuracyIsPercent,
      'accuracy': accuracy,
      'numerator': numerator,
      'denominator': denominator,
      'semantic_type': semanticType,
      'precision': precision
     };
  }

  static List<DvProportion> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvProportion>() : json.map((value) => new DvProportion.fromJson(value)).toList();
  }

  static Map<String, DvProportion> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvProportion>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvProportion.fromJson(value));
    }
    return map;
  }
}
