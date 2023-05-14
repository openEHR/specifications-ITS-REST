//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminEntry {
  /// Returns a new [AdminEntry] instance.
  AdminEntry({
    this.type = 'ADMIN_ENTRY',
    required this.data,
  });

  String type;

  ItemStructure data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminEntry &&
     other.type == type &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'AdminEntry[type=$type, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [AdminEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminEntry(
        type: mapValueOfType<String>(json, r'_type') ?? 'ADMIN_ENTRY',
        data: ItemStructure.fromJson(json[r'data'])!,
      );
    }
    return null;
  }

  static List<AdminEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminEntry> mapFromJson(dynamic json) {
    final map = <String, AdminEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminEntry-objects as value to a dart map
  static Map<String, List<AdminEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

