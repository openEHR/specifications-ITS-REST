//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Participation {
  /// Returns a new [Participation] instance.
  Participation({
    required this.function_,
    this.mode,
    required this.performer,
    this.time,
  });

  DvText function_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvCodedText? mode;

  PartyProxy performer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvIntervalOfDateTime? time;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Participation &&
    other.function_ == function_ &&
    other.mode == mode &&
    other.performer == performer &&
    other.time == time;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (function_.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (performer.hashCode) +
    (time == null ? 0 : time!.hashCode);

  @override
  String toString() => 'Participation[function_=$function_, mode=$mode, performer=$performer, time=$time]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'function'] = this.function_;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
      json[r'performer'] = this.performer;
    if (this.time != null) {
      json[r'time'] = this.time;
    } else {
      json[r'time'] = null;
    }
    return json;
  }

  /// Returns a new [Participation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Participation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Participation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Participation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Participation(
        function_: DvText.fromJson(json[r'function'])!,
        mode: DvCodedText.fromJson(json[r'mode']),
        performer: PartyProxy.fromJson(json[r'performer'])!,
        time: DvIntervalOfDateTime.fromJson(json[r'time']),
      );
    }
    return null;
  }

  static List<Participation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Participation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Participation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Participation> mapFromJson(dynamic json) {
    final map = <String, Participation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Participation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Participation-objects as value to a dart map
  static Map<String, List<Participation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Participation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Participation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'function',
    'performer',
  };
}

