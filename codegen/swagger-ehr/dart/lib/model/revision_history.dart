part of swagger.api;

class RevisionHistory {
  
  List<RevisionHistoryItem> items = [];

  RevisionHistory();

  @override
  String toString() {
    return 'RevisionHistory[items=$items, ]';
  }

  RevisionHistory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items = RevisionHistoryItem.listFromJson(json['items']);
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<RevisionHistory> listFromJson(List<dynamic> json) {
    return json == null ? new List<RevisionHistory>() : json.map((value) => new RevisionHistory.fromJson(value)).toList();
  }

  static Map<String, RevisionHistory> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RevisionHistory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RevisionHistory.fromJson(value));
    }
    return map;
  }
}
