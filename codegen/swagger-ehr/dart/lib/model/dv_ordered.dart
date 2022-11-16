part of swagger.api;

class DvOrdered {
  
  String type = "DV_ORDERED";

  CodePhrase normalStatus = null;

  DvInterval normalRange = null;

  List<ReferenceRange> otherReferenceRanges = [];

  DvOrdered();

  @override
  String toString() {
    return 'DvOrdered[type=$type, normalStatus=$normalStatus, normalRange=$normalRange, otherReferenceRanges=$otherReferenceRanges, ]';
  }

  DvOrdered.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    normalStatus = new CodePhrase.fromJson(json['normal_status']);
    normalRange = new DvInterval.fromJson(json['normal_range']);
    otherReferenceRanges = ReferenceRange.listFromJson(json['other_reference_ranges']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'normal_status': normalStatus,
      'normal_range': normalRange,
      'other_reference_ranges': otherReferenceRanges
     };
  }

  static List<DvOrdered> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvOrdered>() : json.map((value) => new DvOrdered.fromJson(value)).toList();
  }

  static Map<String, DvOrdered> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvOrdered>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvOrdered.fromJson(value));
    }
    return map;
  }
}
