part of swagger.api;

class PartySelf {
  
  String type = "PARTY_SELF";

  PartyRef externalRef = null;

  PartySelf();

  @override
  String toString() {
    return 'PartySelf[type=$type, externalRef=$externalRef, ]';
  }

  PartySelf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    externalRef = new PartyRef.fromJson(json['external_ref']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'external_ref': externalRef
     };
  }

  static List<PartySelf> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartySelf>() : json.map((value) => new PartySelf.fromJson(value)).toList();
  }

  static Map<String, PartySelf> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartySelf>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartySelf.fromJson(value));
    }
    return map;
  }
}
