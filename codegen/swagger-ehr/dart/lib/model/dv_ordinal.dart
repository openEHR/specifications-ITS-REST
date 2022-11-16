part of swagger.api;

class DvOrdinal {
  
  String type = "DV_ORDINAL";

  CodePhrase normalStatus = null;

  DvInterval normalRange = null;

  List<ReferenceRange> otherReferenceRanges = [];

  DvCodedText symbol = null;

  int value = null;

  DvOrdinal();

  @override
  String toString() {
    return 'DvOrdinal[type=$type, normalStatus=$normalStatus, normalRange=$normalRange, otherReferenceRanges=$otherReferenceRanges, symbol=$symbol, value=$value, ]';
  }

  DvOrdinal.fromJson(Map<String, dynamic> json) {
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

  static List<DvOrdinal> listFromJson(List<dynamic> json) {
    return json == null ? new List<DvOrdinal>() : json.map((value) => new DvOrdinal.fromJson(value)).toList();
  }

  static Map<String, DvOrdinal> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DvOrdinal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DvOrdinal.fromJson(value));
    }
    return map;
  }
}
