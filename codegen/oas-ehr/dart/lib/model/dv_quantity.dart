//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvQuantity {
  /// Returns a new [DvQuantity] instance.
  DvQuantity({
    this.type = 'DV_QUANTITY',
    required this.magnitude,
    this.precision,
    required this.units,
    this.unitsSystem,
    this.unitsDisplayName,
  });

  String type;

  num magnitude;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? precision;

  String units;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unitsSystem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unitsDisplayName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvQuantity &&
     other.type == type &&
     other.magnitude == magnitude &&
     other.precision == precision &&
     other.units == units &&
     other.unitsSystem == unitsSystem &&
     other.unitsDisplayName == unitsDisplayName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (magnitude.hashCode) +
    (precision == null ? 0 : precision!.hashCode) +
    (units.hashCode) +
    (unitsSystem == null ? 0 : unitsSystem!.hashCode) +
    (unitsDisplayName == null ? 0 : unitsDisplayName!.hashCode);

  @override
  String toString() => 'DvQuantity[type=$type, magnitude=$magnitude, precision=$precision, units=$units, unitsSystem=$unitsSystem, unitsDisplayName=$unitsDisplayName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'magnitude'] = this.magnitude;
    if (this.precision != null) {
      json[r'precision'] = this.precision;
    } else {
      json[r'precision'] = null;
    }
      json[r'units'] = this.units;
    if (this.unitsSystem != null) {
      json[r'units_system'] = this.unitsSystem;
    } else {
      json[r'units_system'] = null;
    }
    if (this.unitsDisplayName != null) {
      json[r'units_display_name'] = this.unitsDisplayName;
    } else {
      json[r'units_display_name'] = null;
    }
    return json;
  }

  /// Returns a new [DvQuantity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvQuantity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvQuantity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvQuantity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvQuantity(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_QUANTITY',
        magnitude: json[r'magnitude'] == null
            ? null
            : num.parse(json[r'magnitude'].toString()),
        precision: mapValueOfType<int>(json, r'precision'),
        units: mapValueOfType<String>(json, r'units')!,
        unitsSystem: mapValueOfType<String>(json, r'units_system'),
        unitsDisplayName: mapValueOfType<String>(json, r'units_display_name'),
      );
    }
    return null;
  }

  static List<DvQuantity>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvQuantity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvQuantity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvQuantity> mapFromJson(dynamic json) {
    final map = <String, DvQuantity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvQuantity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvQuantity-objects as value to a dart map
  static Map<String, List<DvQuantity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvQuantity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvQuantity.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'magnitude',
    'units',
  };
}

