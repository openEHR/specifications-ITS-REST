part of swagger.api;

class LocatableRef {
  
  String namespace = null;

  String type = null;

  UidBasedId id = null;

  String path = null;

  LocatableRef();

  @override
  String toString() {
    return 'LocatableRef[namespace=$namespace, type=$type, id=$id, path=$path, ]';
  }

  LocatableRef.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    namespace = json['namespace'];
    type = json['type'];
    id = new UidBasedId.fromJson(json['id']);
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    return {
      'namespace': namespace,
      'type': type,
      'id': id,
      'path': path
     };
  }

  static List<LocatableRef> listFromJson(List<dynamic> json) {
    return json == null ? new List<LocatableRef>() : json.map((value) => new LocatableRef.fromJson(value)).toList();
  }

  static Map<String, LocatableRef> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LocatableRef>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LocatableRef.fromJson(value));
    }
    return map;
  }
}
