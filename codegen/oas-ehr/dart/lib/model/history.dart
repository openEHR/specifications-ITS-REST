//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class History {
  /// Returns a new [History] instance.
  History({
    this.type = 'HISTORY',
    required this.origin,
    this.period,
    this.duration,
    this.summary,
    this.events = const [],
  });

  String type;

  DvDateTime origin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDuration? period;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDuration? duration;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? summary;

  List<Event> events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is History &&
     other.type == type &&
     other.origin == origin &&
     other.period == period &&
     other.duration == duration &&
     other.summary == summary &&
     other.events == events;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (origin.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (events.hashCode);

  @override
  String toString() => 'History[type=$type, origin=$origin, period=$period, duration=$duration, summary=$summary, events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'origin'] = this.origin;
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'events'] = this.events;
    return json;
  }

  /// Returns a new [History] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static History? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "History[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "History[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return History(
        type: mapValueOfType<String>(json, r'_type') ?? 'HISTORY',
        origin: DvDateTime.fromJson(json[r'origin'])!,
        period: DvDuration.fromJson(json[r'period']),
        duration: DvDuration.fromJson(json[r'duration']),
        summary: ItemStructure.fromJson(json[r'summary']),
        events: Event.listFromJson(json[r'events']),
      );
    }
    return null;
  }

  static List<History> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <History>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = History.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, History> mapFromJson(dynamic json) {
    final map = <String, History>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = History.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of History-objects as value to a dart map
  static Map<String, List<History>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<History>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = History.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'origin',
  };
}

