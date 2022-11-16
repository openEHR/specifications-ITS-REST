part of swagger.api;

class Element {
  
  String type = "ELEMENT";

  DvCodedText nullFlavour = null;

  DataValue value = null;

  DvText nullReason = null;

  Element();

  @override
  String toString() {
    return 'Element[type=$type, nullFlavour=$nullFlavour, value=$value, nullReason=$nullReason, ]';
  }

  Element.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['_type'];
    nullFlavour = new DvCodedText.fromJson(json['null_flavour']);
    value = new DataValue.fromJson(json['value']);
    nullReason = new DvText.fromJson(json['null_reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_type': type,
      'null_flavour': nullFlavour,
      'value': value,
      'null_reason': nullReason
     };
  }

  static List<Element> listFromJson(List<dynamic> json) {
    return json == null ? new List<Element>() : json.map((value) => new Element.fromJson(value)).toList();
  }

  static Map<String, Element> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Element>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Element.fromJson(value));
    }
    return map;
  }
}
