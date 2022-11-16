part of swagger.api;

class UpdateAudit {
  
  String type = "UPDATE_AUDIT";

  TerminologyCode changeType = null;

  DvText description = null;

  PartyProxy committer = null;

  UpdateAudit();

  @override
  String toString() {
    return 'UpdateAudit[type=$type, changeType=$changeType, description=$description, committer=$committer, ]';
  }

  UpdateAudit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    changeType = new TerminologyCode.fromJson(json['change_type']);
    description = new DvText.fromJson(json['description']);
    committer = new PartyProxy.fromJson(json['committer']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'change_type': changeType,
      'description': description,
      'committer': committer
     };
  }

  static List<UpdateAudit> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateAudit>() : json.map((value) => new UpdateAudit.fromJson(value)).toList();
  }

  static Map<String, UpdateAudit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateAudit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateAudit.fromJson(value));
    }
    return map;
  }
}
