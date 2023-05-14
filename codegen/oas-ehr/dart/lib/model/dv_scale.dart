//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvScale {
  /// Returns a new [DvScale] instance.
  DvScale({
    this.type = 'DV_SCALE',
    required this.symbol,
    required this.value,
  });

  String type;

  DvCodedText symbol;

  num value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvScale &&
     other.type == type &&
     other.symbol == symbol &&
     other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (symbol.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'DvScale[type=$type, symbol=$symbol, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'symbol'] = this.symbol;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [DvScale] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvScale? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvScale[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvScale[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvScale(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_SCALE',
        symbol: DvCodedText.fromJson(json[r'symbol'])!,
        value: json[r'value'] == null
            ? null
            : num.parse(json[r'value'].toString()),
      );
    }
    return null;
  }

  static List<DvScale> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvScale>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvScale.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvScale> mapFromJson(dynamic json) {
    final map = <String, DvScale>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvScale.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvScale-objects as value to a dart map
  static Map<String, List<DvScale>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvScale>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvScale.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'symbol',
    'value',
  };
}

