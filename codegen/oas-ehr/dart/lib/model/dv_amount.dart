//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvAmount {
  /// Returns a new [DvAmount] instance.
  DvAmount({
    this.type = 'DV_AMOUNT',
    this.accuracyIsPercent,
    this.accuracy,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? accuracyIsPercent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? accuracy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvAmount &&
     other.type == type &&
     other.accuracyIsPercent == accuracyIsPercent &&
     other.accuracy == accuracy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (accuracyIsPercent == null ? 0 : accuracyIsPercent!.hashCode) +
    (accuracy == null ? 0 : accuracy!.hashCode);

  @override
  String toString() => 'DvAmount[type=$type, accuracyIsPercent=$accuracyIsPercent, accuracy=$accuracy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.accuracyIsPercent != null) {
      json[r'accuracy_is_percent'] = this.accuracyIsPercent;
    } else {
      json[r'accuracy_is_percent'] = null;
    }
    if (this.accuracy != null) {
      json[r'accuracy'] = this.accuracy;
    } else {
      json[r'accuracy'] = null;
    }
    return json;
  }

  /// Returns a new [DvAmount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvAmount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvAmount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvAmount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvAmount(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_AMOUNT',
        accuracyIsPercent: mapValueOfType<bool>(json, r'accuracy_is_percent'),
        accuracy: json[r'accuracy'] == null
            ? null
            : num.parse(json[r'accuracy'].toString()),
      );
    }
    return null;
  }

  static List<DvAmount>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvAmount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvAmount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvAmount> mapFromJson(dynamic json) {
    final map = <String, DvAmount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvAmount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvAmount-objects as value to a dart map
  static Map<String, List<DvAmount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvAmount>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvAmount.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

