part of swagger.api;

class CodePhrase {
  
  TerminologyId terminologyId = null;

  String codeString = null;

  String preferredTerm = null;

  CodePhrase();

  @override
  String toString() {
    return 'CodePhrase[terminologyId=$terminologyId, codeString=$codeString, preferredTerm=$preferredTerm, ]';
  }

  CodePhrase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    terminologyId = new TerminologyId.fromJson(json['terminology_id']);
    codeString = json['code_string'];
    preferredTerm = json['preferred_term'];
  }

  Map<String, dynamic> toJson() {
    return {
      'terminology_id': terminologyId,
      'code_string': codeString,
      'preferred_term': preferredTerm
     };
  }

  static List<CodePhrase> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodePhrase>() : json.map((value) => new CodePhrase.fromJson(value)).toList();
  }

  static Map<String, CodePhrase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodePhrase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodePhrase.fromJson(value));
    }
    return map;
  }
}
