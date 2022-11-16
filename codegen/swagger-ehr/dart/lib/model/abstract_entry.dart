part of swagger.api;

class AbstractEntry {
  
  CodePhrase language = null;

  CodePhrase encoding = null;

  List<Participation> otherParticipations = [];

  ObjectRef workflowId = null;

  PartyProxy subject = null;

  PartyProxy provider = null;

  AbstractEntry();

  @override
  String toString() {
    return 'AbstractEntry[language=$language, encoding=$encoding, otherParticipations=$otherParticipations, workflowId=$workflowId, subject=$subject, provider=$provider, ]';
  }

  AbstractEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
    otherParticipations = Participation.listFromJson(json['other_participations']);
    workflowId = new ObjectRef.fromJson(json['workflow_id']);
    subject = new PartyProxy.fromJson(json['subject']);
    provider = new PartyProxy.fromJson(json['provider']);
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'encoding': encoding,
      'other_participations': otherParticipations,
      'workflow_id': workflowId,
      'subject': subject,
      'provider': provider
     };
  }

  static List<AbstractEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<AbstractEntry>() : json.map((value) => new AbstractEntry.fromJson(value)).toList();
  }

  static Map<String, AbstractEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AbstractEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AbstractEntry.fromJson(value));
    }
    return map;
  }
}
