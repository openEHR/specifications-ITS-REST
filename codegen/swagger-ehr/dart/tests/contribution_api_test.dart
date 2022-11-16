import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for CONTRIBUTIONApi
void main() {
  var instance = new CONTRIBUTIONApi();

  group('tests for CONTRIBUTIONApi', () {
    // Create CONTRIBUTION
    //
    // We will use the relaxed CONTRIBUTION with the following optional attributes:   - `uid`: when provided, it will be accepted in case is not in-use, otherwise error will be returned   - `audit.time_committed`: server will always set it   - `audit.system_id`: when provided, it will be validated 
    //
    //Future<Contribution> contributionCreate(NewContribution body, String ehrId, { String prefer }) async
    test('test contributionCreate', () async {
      // TODO
    });

    // Get CONTRIBUTION by id
    //
    // Retrieves a CONTRIBUTION identified by `contribution_uid` and associated with the EHR identified by `ehr_id`. 
    //
    //Future<Contribution> contributionGet(String ehrId, String contributionUid) async
    test('test contributionGet', () async {
      // TODO
    });

  });
}
