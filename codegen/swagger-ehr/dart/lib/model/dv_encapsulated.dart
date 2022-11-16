part of swagger.api;

class DvEncapsulated {
  
  String type = "DV_ENCAPSULATED";

  CodePhrase charset = null;

  CodePhrase language = null;

  DvEncapsulated();

  @override
  String toString() {
    return 'DvEncapsulated[type=$type, charset=$charset, language=$language, ]';
  }

  DvEncapsulated.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    charset = new CodePhrase.fromJson(json['charset']);
    language = new CodePhrase.fromJson(json['language']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'charset': charset,
      'language': language
     };
  }

  static List<DvEncapsulated> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvEncapsulated>() : json.map((value) => new DvEncapsulated.fromJson(value)).toList();
  }

  static Map<String, DvEncapsulated> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvEncapsulated>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvEncapsulated.fromJson(value));
    }
    return map;
  }
}
