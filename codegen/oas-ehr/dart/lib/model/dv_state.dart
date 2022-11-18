//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvState {
  /// Returns a new [DvState] instance.
  DvState({
    this.type = 'DV_STATE',
    required this.value,
    required this.isTerminal,
  });

  String type;

  DvCodedText value;

  bool isTerminal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvState &&
     other.type == type &&
     other.value == value &&
     other.isTerminal == isTerminal;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (value.hashCode) +
    (isTerminal.hashCode);

  @override
  String toString() => 'DvState[type=$type, value=$value, isTerminal=$isTerminal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'value'] = this.value;
      json[r'is_terminal'] = this.isTerminal;
    return json;
  }

  /// Returns a new [DvState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvState(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_STATE',
        value: DvCodedText.fromJson(json[r'value'])!,
        isTerminal: mapValueOfType<bool>(json, r'is_terminal')!,
      );
    }
    return null;
  }

  static List<DvState>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvState> mapFromJson(dynamic json) {
    final map = <String, DvState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvState-objects as value to a dart map
  static Map<String, List<DvState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvState>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvState.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
    'is_terminal',
  };
}

