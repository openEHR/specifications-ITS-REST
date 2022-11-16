import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for DIRECTORYApi
void main() {
  var instance = new DIRECTORYApi();

  group('tests for DIRECTORYApi', () {
    // Create directory
    //
    // Creates a new directory FOLDER associated with the EHR identified by `ehr_id`. 
    //
    //Future<Folder> directoryCreate(Folder body, String ehrId, { String prefer }) async
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
    //Future<Folder> directoryUpdate(Folder body, String ehrId, String ifMatch, { String prefer }) async
    test('test directoryUpdate', () async {
      // TODO
    });

  });
}
