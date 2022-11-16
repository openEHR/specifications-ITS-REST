part of swagger.api;

class PartyRef {
  
  String namespace = null;

  String type = null;

  ObjectId id = null;

  PartyRef();

  @override
  String toString() {
    return 'PartyRef[namespace=$namespace, type=$type, id=$id, ]';
  }

  PartyRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    namespace = json['namespace'];
    type = json['type'];
    id = new ObjectId.fromJson(json['id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'namespace': namespace,
      'type': type,
      'id': id
     };
  }

  static List<PartyRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartyRef>() : json.map((value) => new PartyRef.fromJson(value)).toList();
  }

  static Map<String, PartyRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartyRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartyRef.fromJson(value));
    }
    return map;
  }
}
