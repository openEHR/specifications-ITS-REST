//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Element {
  /// Returns a new [Element] instance.
  Element({
    this.type = 'ELEMENT',
    this.nullFlavour,
    this.value,
    this.nullReason,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvCodedText? nullFlavour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DataValue? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvText? nullReason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Element &&
     other.type == type &&
     other.nullFlavour == nullFlavour &&
     other.value == value &&
     other.nullReason == nullReason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (nullFlavour == null ? 0 : nullFlavour!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (nullReason == null ? 0 : nullReason!.hashCode);

  @override
  String toString() => 'Element[type=$type, nullFlavour=$nullFlavour, value=$value, nullReason=$nullReason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.nullFlavour != null) {
      json[r'null_flavour'] = this.nullFlavour;
    } else {
      json[r'null_flavour'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.nullReason != null) {
      json[r'null_reason'] = this.nullReason;
    } else {
      json[r'null_reason'] = null;
    }
    return json;
  }

  /// Returns a new [Element] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Element? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Element[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Element[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Element(
        type: mapValueOfType<String>(json, r'_type') ?? 'ELEMENT',
        nullFlavour: DvCodedText.fromJson(json[r'null_flavour']),
        value: DataValue.fromJson(json[r'value']),
        nullReason: DvText.fromJson(json[r'null_reason']),
      );
    }
    return null;
  }

  static List<Element> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Element>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Element.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Element> mapFromJson(dynamic json) {
    final map = <String, Element>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Element.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Element-objects as value to a dart map
  static Map<String, List<Element>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Element>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Element.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

