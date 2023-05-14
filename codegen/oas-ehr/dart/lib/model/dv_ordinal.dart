//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvOrdinal {
  /// Returns a new [DvOrdinal] instance.
  DvOrdinal({
    this.type = 'DV_ORDINAL',
    required this.symbol,
    required this.value,
  });

  String type;

  DvCodedText symbol;

  int value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvOrdinal &&
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
  String toString() => 'DvOrdinal[type=$type, symbol=$symbol, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'symbol'] = this.symbol;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [DvOrdinal] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvOrdinal? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvOrdinal[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvOrdinal[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvOrdinal(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_ORDINAL',
        symbol: DvCodedText.fromJson(json[r'symbol'])!,
        value: mapValueOfType<int>(json, r'value')!,
      );
    }
    return null;
  }

  static List<DvOrdinal> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvOrdinal>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvOrdinal.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvOrdinal> mapFromJson(dynamic json) {
    final map = <String, DvOrdinal>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvOrdinal.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvOrdinal-objects as value to a dart map
  static Map<String, List<DvOrdinal>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvOrdinal>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvOrdinal.listFromJson(entry.value, growable: growable,);
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

