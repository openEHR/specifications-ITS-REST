//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Activity {
  /// Returns a new [Activity] instance.
  Activity({
    this.type = 'ACTIVITY',
    this.timing,
    required this.actionArchetypeId,
    required this.description,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvParsable? timing;

  String actionArchetypeId;

  ItemStructure description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Activity &&
    other.type == type &&
    other.timing == timing &&
    other.actionArchetypeId == actionArchetypeId &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (timing == null ? 0 : timing!.hashCode) +
    (actionArchetypeId.hashCode) +
    (description.hashCode);

  @override
  String toString() => 'Activity[type=$type, timing=$timing, actionArchetypeId=$actionArchetypeId, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.timing != null) {
      json[r'timing'] = this.timing;
    } else {
      json[r'timing'] = null;
    }
      json[r'action_archetype_id'] = this.actionArchetypeId;
      json[r'description'] = this.description;
    return json;
  }

  /// Returns a new [Activity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Activity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Activity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Activity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Activity(
        type: mapValueOfType<String>(json, r'_type') ?? 'ACTIVITY',
        timing: DvParsable.fromJson(json[r'timing']),
        actionArchetypeId: mapValueOfType<String>(json, r'action_archetype_id')!,
        description: ItemStructure.fromJson(json[r'description'])!,
      );
    }
    return null;
  }

  static List<Activity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Activity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Activity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Activity> mapFromJson(dynamic json) {
    final map = <String, Activity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Activity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Activity-objects as value to a dart map
  static Map<String, List<Activity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Activity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Activity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action_archetype_id',
    'description',
  };
}

