part of swagger.api;

class Composition {
  
  String type = "COMPOSITION";

  CodePhrase language = null;

  CodePhrase territory = null;

  DvCodedText category = null;

  EventContext context = null;

  PartyProxy composer = null;

  List<ContentItem> content = [];

  Composition();

  @override
  String toString() {
    return 'Composition[type=$type, language=$language, territory=$territory, category=$category, context=$context, composer=$composer, content=$content, ]';
  }

  Composition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    language = new CodePhrase.fromJson(json['language']);
    territory = new CodePhrase.fromJson(json['territory']);
    category = new DvCodedText.fromJson(json['category']);
    context = new EventContext.fromJson(json['context']);
    composer = new PartyProxy.fromJson(json['composer']);
    content = ContentItem.listFromJson(json['content']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'language': language,
      'territory': territory,
      'category': category,
      'context': context,
      'composer': composer,
      'content': content
     };
  }

  static List<Composition> listFromJson(List<dynamic> json) {
    return json == null ? new List<Composition>() : json.map((value) => new Composition.fromJson(value)).toList();
  }

  static Map<String, Composition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Composition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Composition.fromJson(value));
    }
    return map;
  }
}
