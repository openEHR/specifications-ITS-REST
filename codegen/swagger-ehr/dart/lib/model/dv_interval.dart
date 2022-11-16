part of swagger.api;

class DvInterval {
  
  String type = "DV_INTERVAL";

  bool lowerUnbounded = null;

  bool upperUnbounded = null;

  bool lowerIncluded = null;

  bool upperIncluded = null;

  DvInterval();

  @override
  String toString() {
    return 'DvInterval[type=$type, lowerUnbounded=$lowerUnbounded, upperUnbounded=$upperUnbounded, lowerIncluded=$lowerIncluded, upperIncluded=$upperIncluded, ]';
  }

  DvInterval.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    lowerUnbounded = json['lower_unbounded'];
    upperUnbounded = json['upper_unbounded'];
    lowerIncluded = json['lower_included'];
    upperIncluded = json['upper_included'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'lower_unbounded': lowerUnbounded,
      'upper_unbounded': upperUnbounded,
      'lower_included': lowerIncluded,
      'upper_included': upperIncluded
     };
  }

  static List<DvInterval> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvInterval>() : json.map((value) => new DvInterval.fromJson(value)).toList();
  }

  static Map<String, DvInterval> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvInterval>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvInterval.fromJson(value));
    }
    return map;
  }
}
