part of swagger.api;

class DvParsable {
  
  String type = "DV_PARSABLE";

  CodePhrase charset = null;

  CodePhrase language = null;

  String value = null;

  String formalism = null;

  DvParsable();

  @override
  String toString() {
    return 'DvParsable[type=$type, charset=$charset, language=$language, value=$value, formalism=$formalism, ]';
  }

  DvParsable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    charset = new CodePhrase.fromJson(json['charset']);
    language = new CodePhrase.fromJson(json['language']);
    value = json['value'];
    formalism = json['formalism'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'charset': charset,
      'language': language,
      'value': value,
      'formalism': formalism
     };
  }

  static List<DvParsable> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvParsable>() : json.map((value) => new DvParsable.fromJson(value)).toList();
  }

  static Map<String, DvParsable> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvParsable>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvParsable.fromJson(value));
    }
    return map;
  }
}
