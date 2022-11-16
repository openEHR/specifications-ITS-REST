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


/// tests for DIRECTORYApi
void main() {
  // final instance = DIRECTORYApi();

  group('tests for DIRECTORYApi', () {
    // Create directory
    //
    // Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
    //
    //Future<Folder> directoryCreate(String ehrId, Folder folder, { String prefer }) async
    test('test directoryCreate', () async {
      // TODO
    });

    // Delete directory
    //
    // Deletes directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
    //
    //Future directoryDelete(String ehrId, String ifMatch) async
    test('test directoryDelete', () async {
      // TODO
    });

    // Get folder in directory version at time
    //
    // Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version.   If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
    //
    //Future<Folder> directoryGetAtTime(String ehrId, { String versionAtTime, String path }) async
    test('test directoryGetAtTime', () async {
      // TODO
    });

    // Get folder in directory version
    //
    // Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.  If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path. 
    //
    //Future<Folder> directoryGetByVersionId(String ehrId, String versionUid, { String path }) async
    test('test directoryGetByVersionId', () async {
      // TODO
    });

    // Update directory
    //
    // Updates directory FOLDER associated with the EHR identified by `ehr_id`.  The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
    //
    //Future<Folder> directoryUpdate(String ehrId, String ifMatch, Folder folder, { String prefer }) async
    test('test directoryUpdate', () async {
      // TODO
    });

  });
}
