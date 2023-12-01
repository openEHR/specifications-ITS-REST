//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Attestation {
  /// Returns a new [Attestation] instance.
  Attestation({
    this.type = 'ATTESTATION',
    this.attestedView,
    this.proof,
    this.items = const [],
    required this.reason,
    required this.isPending,
    required this.systemId,
    required this.timeCommitted,
    required this.changeType,
    this.description,
    required this.committer,
  });

  String type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvMultimedia? attestedView;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proof;

  List<DvEhrUri> items;

  DvText reason;

  bool isPending;

  String systemId;

  DvDateTime timeCommitted;

  DvCodedText changeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DvText? description;

  PartyProxy committer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Attestation &&
    other.type == type &&
    other.attestedView == attestedView &&
    other.proof == proof &&
    _deepEquality.equals(other.items, items) &&
    other.reason == reason &&
    other.isPending == isPending &&
    other.systemId == systemId &&
    other.timeCommitted == timeCommitted &&
    other.changeType == changeType &&
    other.description == description &&
    other.committer == committer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (attestedView == null ? 0 : attestedView!.hashCode) +
    (proof == null ? 0 : proof!.hashCode) +
    (items.hashCode) +
    (reason.hashCode) +
    (isPending.hashCode) +
    (systemId.hashCode) +
    (timeCommitted.hashCode) +
    (changeType.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (committer.hashCode);

  @override
  String toString() => 'Attestation[type=$type, attestedView=$attestedView, proof=$proof, items=$items, reason=$reason, isPending=$isPending, systemId=$systemId, timeCommitted=$timeCommitted, changeType=$changeType, description=$description, committer=$committer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.attestedView != null) {
      json[r'attested_view'] = this.attestedView;
    } else {
      json[r'attested_view'] = null;
    }
    if (this.proof != null) {
      json[r'proof'] = this.proof;
    } else {
      json[r'proof'] = null;
    }
      json[r'items'] = this.items;
      json[r'reason'] = this.reason;
      json[r'is_pending'] = this.isPending;
      json[r'system_id'] = this.systemId;
      json[r'time_committed'] = this.timeCommitted;
      json[r'change_type'] = this.changeType;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'committer'] = this.committer;
    return json;
  }

  /// Returns a new [Attestation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Attestation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Attestation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Attestation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Attestation(
        type: mapValueOfType<String>(json, r'_type') ?? 'ATTESTATION',
        attestedView: DvMultimedia.fromJson(json[r'attested_view']),
        proof: mapValueOfType<String>(json, r'proof'),
        items: DvEhrUri.listFromJson(json[r'items']),
        reason: DvText.fromJson(json[r'reason'])!,
        isPending: mapValueOfType<bool>(json, r'is_pending')!,
        systemId: mapValueOfType<String>(json, r'system_id')!,
        timeCommitted: DvDateTime.fromJson(json[r'time_committed'])!,
        changeType: DvCodedText.fromJson(json[r'change_type'])!,
        description: DvText.fromJson(json[r'description']),
        committer: PartyProxy.fromJson(json[r'committer'])!,
      );
    }
    return null;
  }

  static List<Attestation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Attestation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Attestation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Attestation> mapFromJson(dynamic json) {
    final map = <String, Attestation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Attestation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Attestation-objects as value to a dart map
  static Map<String, List<Attestation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Attestation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Attestation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'reason',
    'is_pending',
    'system_id',
    'time_committed',
    'change_type',
    'committer',
  };
}

