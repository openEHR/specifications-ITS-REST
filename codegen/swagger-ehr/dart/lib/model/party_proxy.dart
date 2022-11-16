part of swagger.api;

class PartyProxy {
  
  String type = "PARTY_PROXY";

  PartyRef externalRef = null;

  PartyProxy();

  @override
  String toString() {
    return 'PartyProxy[type=$type, externalRef=$externalRef, ]';
  }

  PartyProxy.fromJson(Map<String, dynamic> json) {
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

  static List<PartyProxy> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartyProxy>() : json.map((value) => new PartyProxy.fromJson(value)).toList();
  }

  static Map<String, PartyProxy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartyProxy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartyProxy.fromJson(value));
    }
    return map;
  }
}
