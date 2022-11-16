part of swagger.api;

class DvIdentifier {
  
  String type = null;

  String issuer = null;

  String assigner = null;

  String id = null;

  String type = null;

  DvIdentifier();

  @override
  String toString() {
    return 'DvIdentifier[type=$type, issuer=$issuer, assigner=$assigner, id=$id, type=$type, ]';
  }

  DvIdentifier.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    issuer = json['issuer'];
    assigner = json['assigner'];
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'issuer': issuer,
      'assigner': assigner,
      'id': id,
      'type': type
     };
  }

  static List<DvIdentifier> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvIdentifier>() : json.map((value) => new DvIdentifier.fromJson(value)).toList();
  }

  static Map<String, DvIdentifier> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvIdentifier>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvIdentifier.fromJson(value));
    }
    return map;
  }
}
