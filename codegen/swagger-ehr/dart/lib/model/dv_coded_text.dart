part of swagger.api;

class DvCodedText {
  
  String type = "DV_CODED_TEXT";

  String value = null;

  DvUri hyperlink = null;

  CodePhrase language = null;

  CodePhrase encoding = null;

  String formatting = null;

  CodePhrase definingCode = null;

  DvCodedText();

  @override
  String toString() {
    return 'DvCodedText[type=$type, value=$value, hyperlink=$hyperlink, language=$language, encoding=$encoding, formatting=$formatting, definingCode=$definingCode, ]';
  }

  DvCodedText.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    value = json['value'];
    hyperlink = new DvUri.fromJson(json['hyperlink']);
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
    formatting = json['formatting'];
    definingCode = new CodePhrase.fromJson(json['defining_code']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'value': value,
      'hyperlink': hyperlink,
      'language': language,
      'encoding': encoding,
      'formatting': formatting,
      'defining_code': definingCode
     };
  }

  static List<DvCodedText> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvCodedText>() : json.map((value) => new DvCodedText.fromJson(value)).toList();
  }

  static Map<String, DvCodedText> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvCodedText>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvCodedText.fromJson(value));
    }
    return map;
  }
}
