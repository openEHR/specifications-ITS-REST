//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvProportion {
  /// Returns a new [DvProportion] instance.
  DvProportion({
    this.type = 'DV_PROPORTION',
    required this.numerator,
    required this.denominator,
    required this.semanticType,
    this.precision,
  });

  String type;

  num numerator;

  num denominator;

  int semanticType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? precision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvProportion &&
     other.type == type &&
     other.numerator == numerator &&
     other.denominator == denominator &&
     other.semanticType == semanticType &&
     other.precision == precision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (numerator.hashCode) +
    (denominator.hashCode) +
    (semanticType.hashCode) +
    (precision == null ? 0 : precision!.hashCode);

  @override
  String toString() => 'DvProportion[type=$type, numerator=$numerator, denominator=$denominator, semanticType=$semanticType, precision=$precision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'numerator'] = this.numerator;
      json[r'denominator'] = this.denominator;
      json[r'semantic_type'] = this.semanticType;
    if (this.precision != null) {
      json[r'precision'] = this.precision;
    } else {
      json[r'precision'] = null;
    }
    return json;
  }

  /// Returns a new [DvProportion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvProportion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvProportion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvProportion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvProportion(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_PROPORTION',
        numerator: json[r'numerator'] == null
            ? null
            : num.parse(json[r'numerator'].toString()),
        denominator: json[r'denominator'] == null
            ? null
            : num.parse(json[r'denominator'].toString()),
        semanticType: mapValueOfType<int>(json, r'semantic_type')!,
        precision: mapValueOfType<int>(json, r'precision'),
      );
    }
    return null;
  }

  static List<DvProportion>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvProportion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvProportion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvProportion> mapFromJson(dynamic json) {
    final map = <String, DvProportion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvProportion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvProportion-objects as value to a dart map
  static Map<String, List<DvProportion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvProportion>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvProportion.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'numerator',
    'denominator',
    'semantic_type',
  };
}

