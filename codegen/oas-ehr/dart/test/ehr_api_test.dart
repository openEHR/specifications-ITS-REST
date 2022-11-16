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


/// tests for EHRApi
void main() {
  // final instance = EHRApi();

  group('tests for EHRApi', () {
    // Create EHR
    //
    // Create a new `EHR` with an auto-generated identifier.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
    //
    //Future<Ehr> ehrCreate({ String prefer, EhrStatus ehrStatus }) async
    test('test ehrCreate', () async {
      // TODO
    });

    // Create EHR with id
    //
    // Create a new EHR with the specified `ehr_id` identifier.  The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value.  It is strongly RECOMMENDED that an UUID always be used for this.  An EHR_STATUS resource needs to be always created and committed in the new EHR. This resource MAY be also supplied by the client as the request body.  If not supplied, a default EHR_STATUS will be used by the service with following attributes:   - `is_queryable`: true   - `is_modifiable`: true   - `subject`: a PARTY_SELF object  All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics). 
    //
    //Future<Ehr> ehrCreateWithId(String ehrId, { String prefer, EhrStatus ehrStatus }) async
    test('test ehrCreateWithId', () async {
      // TODO
    });

    // Get EHR by id
    //
    // Retrieve the EHR with the specified `ehr_id`. 
    //
    //Future<Ehr> ehrGetById(String ehrId) async
    test('test ehrGetById', () async {
      // TODO
    });

    // Get EHR by subject id
    //
    // Retrieve the EHR with the specified `subject_id` and `subject_namespace`.  These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and  EHR_STATUS.subject.external_ref.namespace values. 
    //
    //Future<Ehr> ehrGetBySubject(String subjectId, String subjectNamespace) async
    test('test ehrGetBySubject', () async {
      // TODO
    });

  });
}
