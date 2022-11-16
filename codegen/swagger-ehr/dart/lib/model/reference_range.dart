part of swagger.api;

class ReferenceRange {
  
  DvText meaning = null;

  DvInterval range = null;

  ReferenceRange();

  @override
  String toString() {
    return 'ReferenceRange[meaning=$meaning, range=$range, ]';
  }

  ReferenceRange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meaning = new DvText.fromJson(json['meaning']);
    range = new DvInterval.fromJson(json['range']);
  }

  Map<String, dynamic> toJson() {
    return {
      'meaning': meaning,
      'range': range
     };
  }

  static List<ReferenceRange> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReferenceRange>() : json.map((value) => new ReferenceRange.fromJson(value)).toList();
  }

  static Map<String, ReferenceRange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReferenceRange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReferenceRange.fromJson(value));
    }
    return map;
  }
}
