part of swagger.api;

class PartyRelated {
  
  String type = "PARTY_RELATED";

  String name = null;

  List<DvIdentifier> identifiers = [];

  DvCodedText relationship = null;

  PartyRelated();

  @override
  String toString() {
    return 'PartyRelated[type=$type, name=$name, identifiers=$identifiers, relationship=$relationship, ]';
  }

  PartyRelated.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    name = json['name'];
    identifiers = DvIdentifier.listFromJson(json['identifiers']);
    relationship = new DvCodedText.fromJson(json['relationship']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'name': name,
      'identifiers': identifiers,
      'relationship': relationship
     };
  }

  static List<PartyRelated> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartyRelated>() : json.map((value) => new PartyRelated.fromJson(value)).toList();
  }

  static Map<String, PartyRelated> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartyRelated>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartyRelated.fromJson(value));
    }
    return map;
  }
}
