part of swagger.api;

class TerminologyCode {
  
  String terminologyId = null;

  String terminologyVersion = null;

  String codeString = null;

  String uri = null;

  TerminologyCode();

  @override
  String toString() {
    return 'TerminologyCode[terminologyId=$terminologyId, terminologyVersion=$terminologyVersion, codeString=$codeString, uri=$uri, ]';
  }

  TerminologyCode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    terminologyId = json['terminology_id'];
    terminologyVersion = json['terminology_version'];
    codeString = json['code_string'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    return {
      'terminology_id': terminologyId,
      'terminology_version': terminologyVersion,
      'code_string': codeString,
      'uri': uri
     };
  }

  static List<TerminologyCode> listFromJson(List<dynamic> json) {
    return json == null ? new List<TerminologyCode>() : json.map((value) => new TerminologyCode.fromJson(value)).toList();
  }

  static Map<String, TerminologyCode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TerminologyCode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TerminologyCode.fromJson(value));
    }
    return map;
  }
}
