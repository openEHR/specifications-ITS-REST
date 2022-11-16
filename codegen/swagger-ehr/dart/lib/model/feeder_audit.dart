part of swagger.api;

class FeederAudit {
  
  List<DvIdentifier> originatingSystemItemIds = [];

  List<DvIdentifier> feederSystemItemIds = [];

  DvEncapsulated originalContent = null;

  FeederAuditDetails originatingSystemAudit = null;

  FeederAuditDetails feederSystemAudit = null;

  FeederAudit();

  @override
  String toString() {
    return 'FeederAudit[originatingSystemItemIds=$originatingSystemItemIds, feederSystemItemIds=$feederSystemItemIds, originalContent=$originalContent, originatingSystemAudit=$originatingSystemAudit, feederSystemAudit=$feederSystemAudit, ]';
  }

  FeederAudit.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    originatingSystemItemIds = DvIdentifier.listFromJson(json['originating_system_item_ids']);
    feederSystemItemIds = DvIdentifier.listFromJson(json['feeder_system_item_ids']);
    originalContent = new DvEncapsulated.fromJson(json['original_content']);
    originatingSystemAudit = new FeederAuditDetails.fromJson(json['originating_system_audit']);
    feederSystemAudit = new FeederAuditDetails.fromJson(json['feeder_system_audit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'originating_system_item_ids': originatingSystemItemIds,
      'feeder_system_item_ids': feederSystemItemIds,
      'original_content': originalContent,
      'originating_system_audit': originatingSystemAudit,
      'feeder_system_audit': feederSystemAudit
     };
  }

  static List<FeederAudit> listFromJson(List<dynamic> json) {
    return json == null ? new List<FeederAudit>() : json.map((value) => new FeederAudit.fromJson(value)).toList();
  }

  static Map<String, FeederAudit> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FeederAudit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeederAudit.fromJson(value));
    }
    return map;
  }
}
