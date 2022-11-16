part of swagger.api;

class CareEntry {
  
  CodePhrase language = null;

  CodePhrase encoding = null;

  List<Participation> otherParticipations = [];

  ObjectRef workflowId = null;

  PartyProxy subject = null;

  PartyProxy provider = null;

  ItemStructure protocol = null;

  ObjectRef guidelineId = null;

  CareEntry();

  @override
  String toString() {
    return 'CareEntry[language=$language, encoding=$encoding, otherParticipations=$otherParticipations, workflowId=$workflowId, subject=$subject, provider=$provider, protocol=$protocol, guidelineId=$guidelineId, ]';
  }

  CareEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language = new CodePhrase.fromJson(json['language']);
    encoding = new CodePhrase.fromJson(json['encoding']);
    otherParticipations = Participation.listFromJson(json['other_participations']);
    workflowId = new ObjectRef.fromJson(json['workflow_id']);
    subject = new PartyProxy.fromJson(json['subject']);
    provider = new PartyProxy.fromJson(json['provider']);
    protocol = new ItemStructure.fromJson(json['protocol']);
    guidelineId = new ObjectRef.fromJson(json['guideline_id']);
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'encoding': encoding,
      'other_participations': otherParticipations,
      'workflow_id': workflowId,
      'subject': subject,
      'provider': provider,
      'protocol': protocol,
      'guideline_id': guidelineId
     };
  }

  static List<CareEntry> listFromJson(List<dynamic> json) {
    return json == null ? new List<CareEntry>() : json.map((value) => new CareEntry.fromJson(value)).toList();
  }

  static Map<String, CareEntry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CareEntry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CareEntry.fromJson(value));
    }
    return map;
  }
}
