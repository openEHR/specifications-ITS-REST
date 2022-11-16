part of swagger.api;

class DvText {
  
  String type = "DV_TEXT";

  String value = null;

  DvUri hyperlink = null;

  CodePhrase language = null;

  CodePhrase encoding = null;

  String formatting = null;

  DvText();

  @override
  String toString() {
    return 'DvText[type=$type, value=$value, hyperlink=$hyperlink, language=$language, encoding=$encoding, formatting=$formatting, ]';
  }

  DvText.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'];
    hyperlink = new DvUri.fromJson(json['hyperlink']);
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
    formatting = json['formatting'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value,
      'hyperlink': hyperlink,
      'language': language,
      'encoding': encoding,
      'formatting': formatting
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
