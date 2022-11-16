part of swagger.api;

class DvQuantity {
  
  String type = "DV_QUANTITY";

  bool accuracyIsPercent = null;

  double accuracy = null;

  double magnitude = null;

  int precision = null;

  String units = null;

  String unitsSystem = null;

  String unitsDisplayName = null;

  DvQuantity();

  @override
  String toString() {
    return 'DvQuantity[type=$type, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy, magnitude=$magnitude, precision=$precision, units=$units, unitsSystem=$unitsSystem, unitsDisplayName=$unitsDisplayName, ]';
  }

  DvQuantity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    accuracyIsPercent = json['accuracy_is_percent'];
    accuracy = json['accuracy'];
    magnitude = json['magnitude'];
    precision = json['precision'];
    units = json['units'];
    unitsSystem = json['units_system'];
    unitsDisplayName = json['units_display_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'accuracy_is_percent': accuracyIsPercent,
      'accuracy': accuracy,
      'magnitude': magnitude,
      'precision': precision,
      'units': units,
      'units_system': unitsSystem,
      'units_display_name': unitsDisplayName
     };
  }

  static List<DvQuantity> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvQuantity>() : json.map((value) => new DvQuantity.fromJson(value)).toList();
  }

  static Map<String, DvQuantity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvQuantity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvQuantity.fromJson(value));
    }
    return map;
  }
}
