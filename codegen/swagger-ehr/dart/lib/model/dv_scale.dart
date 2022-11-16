part of swagger.api;

class DvScale {
  
  String type = "DV_SCALE";

  CodePhrase normalStatus = null;

  DvInterval normalRange = null;

  List<ReferenceRange> otherReferenceRanges = [];

  DvCodedText symbol = null;

  double value = null;

  DvScale();

  @override
  String toString() {
    return 'DvScale[type=$type, normalStatus=$normalStatus, normalRange=$normalRange, otherReferenceRanges=$otherReferenceRanges, symbol=$symbol, value=$value, ]';
  }

  DvScale.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    normalStatus = new CodePhrase.fromJson(json['normal_status']);
    normalRange = new DvInterval.fromJson(json['normal_range']);
    otherReferenceRanges = ReferenceRange.listFromJson(json['other_reference_ranges']);
    symbol = new DvCodedText.fromJson(json['symbol']);
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'normal_status': normalStatus,
      'normal_range': normalRange,
      'other_reference_ranges': otherReferenceRanges,
      'symbol': symbol,
      'value': value
     };
  }

  static List<DvScale> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvScale>() : json.map((value) => new DvScale.fromJson(value)).toList();
  }

  static Map<String, DvScale> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvScale>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvScale.fromJson(value));
    }
    return map;
  }
}
