part of swagger.api;

class Attestation {
  
  String type = "ATTESTATION";

  String systemId = null;

  DvDateTime timeCommitted = null;

  DvCodedText changeType = null;

  DvText description = null;

  PartyProxy committer = null;

  DvMultimedia attestedView = null;

  String proof = null;

  List<DvEhrUri> items = [];

  DvText reason = null;

  bool isPending = null;

  Attestation();

  @override
  String toString() {
    return 'Attestation[type=$type, systemId=$systemId, timeCommitted=$timeCommitted, changeType=$changeType, description=$description, committer=$committer, attestedView=$attestedView, proof=$proof, items=$items, reason=$reason, isPending=$isPending, ]';
  }

  Attestation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    systemId = json['system_id'];
    timeCommitted = new DvDateTime.fromJson(json['time_committed']);
    changeType = new DvCodedText.fromJson(json['change_type']);
    description = new DvText.fromJson(json['description']);
    committer = new PartyProxy.fromJson(json['committer']);
    attestedView = new DvMultimedia.fromJson(json['attested_view']);
    proof = json['proof'];
    items = DvEhrUri.listFromJson(json['items']);
    reason = new DvText.fromJson(json['reason']);
    isPending = json['is_pending'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'system_id': systemId,
      'time_committed': timeCommitted,
      'change_type': changeType,
      'description': description,
      'committer': committer,
      'attested_view': attestedView,
      'proof': proof,
      'items': items,
      'reason': reason,
      'is_pending': isPending
     };
  }

  static List<Attestation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Attestation>() : json.map((value) => new Attestation.fromJson(value)).toList();
  }

  static Map<String, Attestation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Attestation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Attestation.fromJson(value));
    }
    return map;
  }
}
