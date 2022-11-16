part of swagger.api;

class PartyIdentified {
  
  String type = "PARTY_IDENTIFIED";

  PartyRef externalRef = null;

  String name = null;

  List<DvIdentifier> identifiers = [];

  PartyIdentified();

  @override
  String toString() {
    return 'PartyIdentified[type=$type, externalRef=$externalRef, name=$name, identifiers=$identifiers, ]';
  }

  PartyIdentified.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    externalRef = new PartyRef.fromJson(json['external_ref']);
    name = json['name'];
    identifiers = DvIdentifier.listFromJson(json['identifiers']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'external_ref': externalRef,
      'name': name,
      'identifiers': identifiers
     };
  }

  static List<PartyIdentified> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartyIdentified>() : json.map((value) => new PartyIdentified.fromJson(value)).toList();
  }

  static Map<String, PartyIdentified> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartyIdentified>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartyIdentified.fromJson(value));
    }
    return map;
  }
}
