part of swagger.api;

class ObjectRef {
  
  String namespace = null;

  String type = null;

  ObjectId id = null;

  ObjectRef();

  @override
  String toString() {
    return 'ObjectRef[namespace=$namespace, type=$type, id=$id, ]';
  }

  ObjectRef.fromJson(Map<String, dynamic> json) {
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

  static List<ObjectRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectRef>() : json.map((value) => new ObjectRef.fromJson(value)).toList();
  }

  static Map<String, ObjectRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectRef.fromJson(value));
    }
    return map;
  }
}
