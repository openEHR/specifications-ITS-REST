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


/// tests for COMPOSITIONApi
void main() {
  // final instance = COMPOSITIONApi();

  group('tests for COMPOSITIONApi', () {
    // Create COMPOSITION
    //
    // Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
    //
    //Future<Composition> compositionCreate(String ehrId, Composition composition, { String prefer }) async
    test('test compositionCreate', () async {
      // TODO
    });

    // Delete COMPOSITION
    //
    // Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
    //
    //Future compositionDelete(String ehrId, String uidBasedId) async
    test('test compositionDelete', () async {
      // TODO
    });

    // Get COMPOSITION
    //
    // Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
    //
    //Future<Composition> compositionGet(String ehrId, String uidBasedId, { String versionAtTime }) async
    test('test compositionGet', () async {
      // TODO
    });

    // Update COMPOSITION
    //
    // Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
    //
    //Future<Composition> compositionUpdate(String ehrId, String uidBasedId, String ifMatch, Composition composition, { String prefer }) async
    test('test compositionUpdate', () async {
      // TODO
    });

    // Get versioned COMPOSITION
    //
    // Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
    //
    //Future<VersionedComposition> versionedCompositionGet(String ehrId, String versionedObjectUid) async
    test('test versionedCompositionGet', () async {
      // TODO
    });

    // Get versioned COMPOSITION revision history
    //
    // Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
    //
    //Future<RevisionHistory> versionedCompositionRevisionHistory(String ehrId, String versionedObjectUid) async
    test('test versionedCompositionRevisionHistory', () async {
      // TODO
    });

    // Get versioned COMPOSITION version at time
    //
    // Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
    //
    //Future<Version> versionedCompositionVersionGetAtTime(String ehrId, String versionedObjectUid, { String versionAtTime }) async
    test('test versionedCompositionVersionGetAtTime', () async {
      // TODO
    });

    // Get versioned COMPOSITION version by id
    //
    // Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
    //
    //Future<Version> versionedCompositionVersionGetById(String ehrId, String versionedObjectUid, String versionUid) async
    test('test versionedCompositionVersionGetById', () async {
      // TODO
    });

  });
}
