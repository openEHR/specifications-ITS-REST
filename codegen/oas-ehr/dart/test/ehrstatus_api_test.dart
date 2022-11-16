//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for EHRSTATUSApi
void main() {
  // final instance = EHRSTATUSApi();

  group('tests for EHRSTATUSApi', () {
    // Get EHR_STATUS at time
    //
    // Retrieves a version of the EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ EHR_STATUS version. 
    //
    //Future<EhrStatus> ehrStatusGetAtTime(String ehrId, { String versionAtTime }) async
    test('test ehrStatusGetAtTime', () async {
      // TODO
    });

    // Get EHR_STATUS by version id
    //
    // Retrieves a particular version of the EHR_STATUS identified by `version_uid` and associated with the EHR identified by `ehr_id`. 
    //
    //Future<EhrStatus> ehrStatusGetByVersionId(String ehrId, String versionUid) async
    test('test ehrStatusGetByVersionId', () async {
      // TODO
    });

    // Update EHR_STATUS
    //
    // Updates EHR_STATUS associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of EHR_STATUS resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.  The response will contain the updated EHR_STATUS resource when the `Prefer` header has a value of `return=representation`. 
    //
    //Future<EhrStatus> ehrStatusUpdate(String ehrId, String ifMatch, EhrStatus ehrStatus, { String prefer }) async
    test('test ehrStatusUpdate', () async {
      // TODO
    });

    // Get versioned EHR_STATUS
    //
    // Retrieves a VERSIONED_EHR_STATUS associated with an EHR identified by `ehr_id`. 
    //
    //Future<VersionedEhrStatus> versionedEhrStatusGet(String ehrId) async
    test('test versionedEhrStatusGet', () async {
      // TODO
    });

    // Get versioned EHR_STATUS revision history
    //
    // Retrieves revision history of the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`. 
    //
    //Future<RevisionHistory> versionedEhrStatusRevisionHistory(String ehrId) async
    test('test versionedEhrStatusRevisionHistory', () async {
      // TODO
    });

    // Get versioned EHR_STATUS version at time
    //
    // Retrieves a VERSION from the VERSIONED_EHR_STATUS associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
    //
    //Future<Version> versionedEhrStatusVersionGetAtTime(String ehrId, { String versionAtTime }) async
    test('test versionedEhrStatusVersionGetAtTime', () async {
      // TODO
    });

    // Get versioned EHR_STATUS version by id
    //
    // Retrieves a VERSION identified by `version_uid` of an EHR_STATUS associated with the EHR identified by `ehr_id`. 
    //
    //Future<Version> versionedEhrStatusVersionGetById(String ehrId, String versionUid) async
    test('test versionedEhrStatusVersionGetById', () async {
      // TODO
    });

  });
}
