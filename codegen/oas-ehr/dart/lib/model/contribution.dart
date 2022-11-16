//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Contribution {
  /// Returns a new [Contribution] instance.
  Contribution({
    required this.uid,
    this.versions = const [],
    required this.audit,
  });

  HierObjectId uid;

  List<ObjectRef> versions;

  AuditDetails audit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Contribution &&
     other.uid == uid &&
     other.versions == versions &&
     other.audit == audit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uid.hashCode) +
    (versions.hashCode) +
    (audit.hashCode);

  @override
  String toString() => 'Contribution[uid=$uid, versions=$versions, audit=$audit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'uid'] = this.uid;
      json[r'versions'] = this.versions;
      json[r'audit'] = this.audit;
    return json;
  }

  /// Returns a new [Contribution] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Contribution? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Contribution[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Contribution[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Contribution(
        uid: HierObjectId.fromJson(json[r'uid'])!,
        versions: ObjectRef.listFromJson(json[r'versions'])!,
        audit: AuditDetails.fromJson(json[r'audit'])!,
      );
    }
    return null;
  }

  static List<Contribution>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Contribution>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Contribution.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Contribution> mapFromJson(dynamic json) {
    final map = <String, Contribution>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contribution.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Contribution-objects as value to a dart map
  static Map<String, List<Contribution>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Contribution>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Contribution.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uid',
    'versions',
    'audit',
  };
}

