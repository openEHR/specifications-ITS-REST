part of swagger.api;

class DvQuantified {
  
  String type = "DV_QUANTIFIED";

  CodePhrase normalStatus = null;

  DvInterval normalRange = null;

  List<ReferenceRange> otherReferenceRanges = [];

  String magnitudeStatus = "=";

  DvQuantified();

  @override
  String toString() {
    return 'DvQuantified[type=$type, normalStatus=$normalStatus, normalRange=$normalRange, otherReferenceRanges=$otherReferenceRanges, magnitudeStatus=$magnitudeStatus, ]';
  }

  DvQuantified.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    normalStatus = new CodePhrase.fromJson(json['normal_status']);
    normalRange = new DvInterval.fromJson(json['normal_range']);
    otherReferenceRanges = ReferenceRange.listFromJson(json['other_reference_ranges']);
    magnitudeStatus = json['magnitude_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'normal_status': normalStatus,
      'normal_range': normalRange,
      'other_reference_ranges': otherReferenceRanges,
      'magnitude_status': magnitudeStatus
     };
  }

  static List<DvQuantified> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvQuantified>() : json.map((value) => new DvQuantified.fromJson(value)).toList();
  }

  static Map<String, DvQuantified> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvQuantified>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvQuantified.fromJson(value));
    }
    return map;
  }
}
