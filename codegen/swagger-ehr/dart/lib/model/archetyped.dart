part of swagger.api;

class Archetyped {
  
  ArchetypeId archetypeId = null;

  TemplateId templateId = null;

  String rmVersion = null;

  Archetyped();

  @override
  String toString() {
    return 'Archetyped[archetypeId=$archetypeId, templateId=$templateId, rmVersion=$rmVersion, ]';
  }

  Archetyped.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    archetypeId = new ArchetypeId.fromJson(json['archetype_id']);
    templateId = new TemplateId.fromJson(json['template_id']);
    rmVersion = json['rm_version'];
  }

  Map<String, dynamic> toJson() {
    return {
      'archetype_id': archetypeId,
      'template_id': templateId,
      'rm_version': rmVersion
     };
  }

  static List<Archetyped> listFromJson(List<dynamic> json) {
    return json == null ? new List<Archetyped>() : json.map((value) => new Archetyped.fromJson(value)).toList();
  }

  static Map<String, Archetyped> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Archetyped>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Archetyped.fromJson(value));
    }
    return map;
  }
}
