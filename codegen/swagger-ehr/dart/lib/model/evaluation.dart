part of swagger.api;

class Evaluation {
  
  ItemStructure protocol = null;

  ObjectRef guidelineId = null;

  String type = "EVALUATION";

  ItemStructure data = null;

  Evaluation();

  @override
  String toString() {
    return 'Evaluation[protocol=$protocol, guidelineId=$guidelineId, type=$type, data=$data, ]';
  }

  Evaluation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocol = new ItemStructure.fromJson(json['protocol']);
    guidelineId = new ObjectRef.fromJson(json['guideline_id']);
    type = json['_type'];
    data = new ItemStructure.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'protocol': protocol,
      'guideline_id': guidelineId,
      '_type': type,
      'data': data
     };
  }

  static List<Evaluation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Evaluation>() : json.map((value) => new Evaluation.fromJson(value)).toList();
  }

  static Map<String, Evaluation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Evaluation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Evaluation.fromJson(value));
    }
    return map;
  }
}
