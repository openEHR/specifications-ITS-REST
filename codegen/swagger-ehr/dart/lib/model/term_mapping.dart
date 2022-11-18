part of swagger.api;

class TermMapping {
  
  String match = null;

  DvCodedText purpose = null;

  CodePhrase target = null;

  TermMapping();

  @override
  String toString() {
    return 'TermMapping[match=$match, purpose=$purpose, target=$target, ]';
  }

  TermMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    match = json['match'];
    purpose = new DvCodedText.fromJson(json['purpose']);
    target = new CodePhrase.fromJson(json['target']);
  }

  Map<String, dynamic> toJson() {
    return {
      'match': match,
      'purpose': purpose,
      'target': target
     };
  }

  static List<TermMapping> listFromJson(List<dynamic> json) {
    return json == null ? new List<TermMapping>() : json.map((value) => new TermMapping.fromJson(value)).toList();
  }

  static Map<String, TermMapping> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TermMapping>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TermMapping.fromJson(value));
    }
    return map;
  }
}
