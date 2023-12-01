//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DvMultimedia {
  /// Returns a new [DvMultimedia] instance.
  DvMultimedia({
    this.type = 'DV_MULTIMEDIA',
    this.alternateText,
    this.uri,
    this.data,
    required this.mediaType,
    this.compressionAlgorithm,
    this.integrityCheck,
    this.integrityCheckAlgorithm,
    this.thumbnail,
    required this.size,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alternateText;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvUri? uri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  CodePhrase mediaType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodePhrase? compressionAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? integrityCheck;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CodePhrase? integrityCheckAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvMultimedia? thumbnail;

  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DvMultimedia &&
    other.type == type &&
    other.alternateText == alternateText &&
    other.uri == uri &&
    other.data == data &&
    other.mediaType == mediaType &&
    other.compressionAlgorithm == compressionAlgorithm &&
    other.integrityCheck == integrityCheck &&
    other.integrityCheckAlgorithm == integrityCheckAlgorithm &&
    other.thumbnail == thumbnail &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (alternateText == null ? 0 : alternateText!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (mediaType.hashCode) +
    (compressionAlgorithm == null ? 0 : compressionAlgorithm!.hashCode) +
    (integrityCheck == null ? 0 : integrityCheck!.hashCode) +
    (integrityCheckAlgorithm == null ? 0 : integrityCheckAlgorithm!.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'DvMultimedia[type=$type, alternateText=$alternateText, uri=$uri, data=$data, mediaType=$mediaType, compressionAlgorithm=$compressionAlgorithm, integrityCheck=$integrityCheck, integrityCheckAlgorithm=$integrityCheckAlgorithm, thumbnail=$thumbnail, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.alternateText != null) {
      json[r'alternate_text'] = this.alternateText;
    } else {
      json[r'alternate_text'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'media_type'] = this.mediaType;
    if (this.compressionAlgorithm != null) {
      json[r'compression_algorithm'] = this.compressionAlgorithm;
    } else {
      json[r'compression_algorithm'] = null;
    }
    if (this.integrityCheck != null) {
      json[r'integrity_check'] = this.integrityCheck;
    } else {
      json[r'integrity_check'] = null;
    }
    if (this.integrityCheckAlgorithm != null) {
      json[r'integrity_check_algorithm'] = this.integrityCheckAlgorithm;
    } else {
      json[r'integrity_check_algorithm'] = null;
    }
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [DvMultimedia] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DvMultimedia? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DvMultimedia[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DvMultimedia[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DvMultimedia(
        type: mapValueOfType<String>(json, r'_type') ?? 'DV_MULTIMEDIA',
        alternateText: mapValueOfType<String>(json, r'alternate_text'),
        uri: DvUri.fromJson(json[r'uri']),
        data: mapValueOfType<String>(json, r'data'),
        mediaType: CodePhrase.fromJson(json[r'media_type'])!,
        compressionAlgorithm: CodePhrase.fromJson(json[r'compression_algorithm']),
        integrityCheck: mapValueOfType<String>(json, r'integrity_check'),
        integrityCheckAlgorithm: CodePhrase.fromJson(json[r'integrity_check_algorithm']),
        thumbnail: DvMultimedia.fromJson(json[r'thumbnail']),
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<DvMultimedia> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DvMultimedia>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DvMultimedia.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DvMultimedia> mapFromJson(dynamic json) {
    final map = <String, DvMultimedia>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DvMultimedia.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DvMultimedia-objects as value to a dart map
  static Map<String, List<DvMultimedia>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DvMultimedia>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DvMultimedia.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'media_type',
    'size',
  };
}

