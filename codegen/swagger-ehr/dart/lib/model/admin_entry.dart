part of swagger.api;

class AdminEntry {
  
  CodePhrase language = null;

  CodePhrase encoding = null;

  List<Participation> otherParticipations = [];

  ObjectRef workflowId = null;

  PartyProxy subject = null;

  PartyProxy provider = null;

  String type = "ADMIN_ENTRY";

  ItemStructure data = null;

  AdminEntry();

  @override
  String toString() {
    return 'AdminEntry[language=$language, encoding=$encoding, otherParticipations=$otherParticipations, workflowId=$workflowId, subject=$subject, provider=$provider, type=$type, data=$data, ]';
  }

  AdminEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
    otherParticipations = Participation.listFromJson(json['other_participations']);
    workflowId = new ObjectRef.fromJson(json['workflow_id']);
    subject = new PartyProxy.fromJson(json['subject']);
    provider = new PartyProxy.fromJson(json['provider']);
    type = json['_type'];
    data = new ItemStructure.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'encoding': encoding,
      'other_participations': otherParticipations,
      'workflow_id': workflowId,
      'subject': subject,
      'provider': provider,
      '_type': type,
      'data': data
     };
  }

  static List<AdminEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<AdminEntry>() : json.map((value) => new AdminEntry.fromJson(value)).toList();
  }

  static Map<String, AdminEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AdminEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AdminEntry.fromJson(value));
    }
    return map;
  }
}
