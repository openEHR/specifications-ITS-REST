part of swagger.api;

class UpdateAttestation {
  
  String type = "UPDATE_ATTESTATION";

  TerminologyCode changeType = null;

  DvText description = null;

  PartyProxy committer = null;

  DvMultimedia attestedView = null;

  String proof = null;

  List<DvEhrUri> items = [];

  DvText reason = null;

  bool isPending = null;

  UpdateAttestation();

  @override
  String toString() {
    return 'UpdateAttestation[type=$type, changeType=$changeType, description=$description, committer=$committer, attestedView=$attestedView, proof=$proof, items=$items, reason=$reason, isPending=$isPending, ]';
  }

  UpdateAttestation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    changeType = new TerminologyCode.fromJson(json['change_type']);
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

  static List<UpdateAttestation> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateAttestation>() : json.map((value) => new UpdateAttestation.fromJson(value)).toList();
  }

  static Map<String, UpdateAttestation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateAttestation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateAttestation.fromJson(value));
    }
    return map;
  }
}
