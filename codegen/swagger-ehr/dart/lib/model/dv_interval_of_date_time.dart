part of swagger.api;

class DvIntervalOfDateTime {
  
  String type = "DV_INTERVAL";

  bool lowerUnbounded = null;

  bool upperUnbounded = null;

  bool lowerIncluded = null;

  bool upperIncluded = null;

  DvDateTime lower = null;

  DvDateTime upper = null;

  DvIntervalOfDateTime();

  @override
  String toString() {
    return 'DvIntervalOfDateTime[type=$type, lowerUnbounded=$lowerUnbounded, upperUnbounded=$upperUnbounded, lowerIncluded=$lowerIncluded, upperIncluded=$upperIncluded, lower=$lower, upper=$upper, ]';
  }

  DvIntervalOfDateTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    lowerUnbounded = json['lower_unbounded'];
    upperUnbounded = json['upper_unbounded'];
    lowerIncluded = json['lower_included'];
    upperIncluded = json['upper_included'];
    lower = new DvDateTime.fromJson(json['lower']);
    upper = new DvDateTime.fromJson(json['upper']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'lower_unbounded': lowerUnbounded,
      'upper_unbounded': upperUnbounded,
      'lower_included': lowerIncluded,
      'upper_included': upperIncluded,
      'lower': lower,
      'upper': upper
     };
  }

  static List<DvIntervalOfDateTime> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvIntervalOfDateTime>() : json.map((value) => new DvIntervalOfDateTime.fromJson(value)).toList();
  }

  static Map<String, DvIntervalOfDateTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvIntervalOfDateTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvIntervalOfDateTime.fromJson(value));
    }
    return map;
  }
}
