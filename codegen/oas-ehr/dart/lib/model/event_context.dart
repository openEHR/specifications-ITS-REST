//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventContext {
  /// Returns a new [EventContext] instance.
  EventContext({
    required this.startTime,
    this.endTime,
    this.location,
    required this.setting,
    this.otherContext,
    this.healthCareFacility,
    this.participations = const [],
    this.type,
  });

  DvDateTime startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvDateTime? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  DvCodedText setting;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ItemStructure? otherContext;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartyIdentified? healthCareFacility;

  List<Participation> participations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventContext &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.location == location &&
    other.setting == setting &&
    other.otherContext == otherContext &&
    other.healthCareFacility == healthCareFacility &&
    _deepEquality.equals(other.participations, participations) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (startTime.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (setting.hashCode) +
    (otherContext == null ? 0 : otherContext!.hashCode) +
    (healthCareFacility == null ? 0 : healthCareFacility!.hashCode) +
    (participations.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'EventContext[startTime=$startTime, endTime=$endTime, location=$location, setting=$setting, otherContext=$otherContext, healthCareFacility=$healthCareFacility, participations=$participations, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start_time'] = this.startTime;
    if (this.endTime != null) {
      json[r'end_time'] = this.endTime;
    } else {
      json[r'end_time'] = null;
    }
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'setting'] = this.setting;
    if (this.otherContext != null) {
      json[r'other_context'] = this.otherContext;
    } else {
      json[r'other_context'] = null;
    }
    if (this.healthCareFacility != null) {
      json[r'health_care_facility'] = this.healthCareFacility;
    } else {
      json[r'health_care_facility'] = null;
    }
      json[r'participations'] = this.participations;
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    return json;
  }

  /// Returns a new [EventContext] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventContext? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EventContext[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EventContext[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EventContext(
        startTime: DvDateTime.fromJson(json[r'start_time'])!,
        endTime: DvDateTime.fromJson(json[r'end_time']),
        location: mapValueOfType<String>(json, r'location'),
        setting: DvCodedText.fromJson(json[r'setting'])!,
        otherContext: ItemStructure.fromJson(json[r'other_context']),
        healthCareFacility: PartyIdentified.fromJson(json[r'health_care_facility']),
        participations: Participation.listFromJson(json[r'participations']),
        type: mapValueOfType<String>(json, r'_type'),
      );
    }
    return null;
  }

  static List<EventContext> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventContext>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventContext.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventContext> mapFromJson(dynamic json) {
    final map = <String, EventContext>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventContext.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventContext-objects as value to a dart map
  static Map<String, List<EventContext>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventContext>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventContext.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start_time',
    'setting',
  };
}

