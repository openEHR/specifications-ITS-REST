//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Locatable {
  /// Returns a new [Locatable] instance.
  Locatable({
    required this.name,
    required this.archetypeNodeId,
    this.uid,
    this.links = const [],
    this.archetypeDetails,
    this.feederAudit,
    this.type,
  });

  DvText name;

  String archetypeNodeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UidBasedId? uid;

  List<Link> links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Archetyped? archetypeDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FeederAudit? feederAudit;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Locatable &&
    other.name == name &&
    other.archetypeNodeId == archetypeNodeId &&
    other.uid == uid &&
    _deepEquality.equals(other.links, links) &&
    other.archetypeDetails == archetypeDetails &&
    other.feederAudit == feederAudit &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (archetypeNodeId.hashCode) +
    (uid == null ? 0 : uid!.hashCode) +
    (links.hashCode) +
    (archetypeDetails == null ? 0 : archetypeDetails!.hashCode) +
    (feederAudit == null ? 0 : feederAudit!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Locatable[name=$name, archetypeNodeId=$archetypeNodeId, uid=$uid, links=$links, archetypeDetails=$archetypeDetails, feederAudit=$feederAudit, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'archetype_node_id'] = this.archetypeNodeId;
    if (this.uid != null) {
      json[r'uid'] = this.uid;
    } else {
      json[r'uid'] = null;
    }
      json[r'links'] = this.links;
    if (this.archetypeDetails != null) {
      json[r'archetype_details'] = this.archetypeDetails;
    } else {
      json[r'archetype_details'] = null;
    }
    if (this.feederAudit != null) {
      json[r'feeder_audit'] = this.feederAudit;
    } else {
      json[r'feeder_audit'] = null;
    }
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [Locatable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Locatable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Locatable[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Locatable[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Locatable(
        name: DvText.fromJson(json[r'name'])!,
        archetypeNodeId: mapValueOfType<String>(json, r'archetype_node_id')!,
        uid: UidBasedId.fromJson(json[r'uid']),
        links: Link.listFromJson(json[r'links']),
        archetypeDetails: Archetyped.fromJson(json[r'archetype_details']),
        feederAudit: FeederAudit.fromJson(json[r'feeder_audit']),
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<Locatable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Locatable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Locatable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Locatable> mapFromJson(dynamic json) {
    final map = <String, Locatable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Locatable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Locatable-objects as value to a dart map
  static Map<String, List<Locatable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Locatable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Locatable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'archetype_node_id',
  };
}

