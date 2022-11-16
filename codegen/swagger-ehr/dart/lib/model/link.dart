part of swagger.api;

class Link {
  
  DvText meaning = null;

  DvText type = null;

  DvEhrUri target = null;

  Link();

  @override
  String toString() {
    return 'Link[meaning=$meaning, type=$type, target=$target, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    meaning = new DvText.fromJson(json['meaning']);
    type = new DvText.fromJson(json['type']);
    target = new DvEhrUri.fromJson(json['target']);
  }

  Map<String, dynamic> toJson() {
    return {
      'meaning': meaning,
      'type': type,
      'target': target
     };
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? new List<Link>() : json.map((value) => new Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Link>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Link.fromJson(value));
    }
    return map;
  }
}
