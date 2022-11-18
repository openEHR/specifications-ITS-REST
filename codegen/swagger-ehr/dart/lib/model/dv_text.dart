part of swagger.api;

class DvText {
  
  String type = "DV_TEXT";

  String value = null;

  DvUri hyperlink = null;

  String formatting = null;

  List<TermMapping> mappings = [];

  CodePhrase language = null;

  CodePhrase encoding = null;

  DvText();

  @override
  String toString() {
    return 'DvText[type=$type, value=$value, hyperlink=$hyperlink, formatting=$formatting, mappings=$mappings, language=$language, encoding=$encoding, ]';
  }

  DvText.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'];
    hyperlink = new DvUri.fromJson(json['hyperlink']);
    formatting = json['formatting'];
    mappings = TermMapping.listFromJson(json['mappings']);
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value,
      'hyperlink': hyperlink,
      'formatting': formatting,
      'mappings': mappings,
      'language': language,
      'encoding': encoding
     };
  }

  static List<DvText> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvText>() : json.map((value) => new DvText.fromJson(value)).toList();
  }

  static Map<String, DvText> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvText>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvText.fromJson(value));
    }
    return map;
  }
}
