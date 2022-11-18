//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/composition_api.dart';
part 'api/contribution_api.dart';
part 'api/directory_api.dart';
part 'api/ehr_api.dart';
part 'api/ehrstatus_api.dart';

part 'model/abstract_entry.dart';
part 'model/action.dart';
part 'model/activity.dart';
part 'model/admin_entry.dart';
part 'model/archetype_id.dart';
part 'model/archetyped.dart';
part 'model/attestation.dart';
part 'model/audit_details.dart';
part 'model/care_entry.dart';
part 'model/clstr.dart';
part 'model/code_phrase.dart';
part 'model/composition.dart';
part 'model/content_item.dart';
part 'model/contribution.dart';
part 'model/data_structure.dart';
part 'model/data_value.dart';
part 'model/dv_amount.dart';
part 'model/dv_boolean.dart';
part 'model/dv_coded_text.dart';
part 'model/dv_count.dart';
part 'model/dv_date.dart';
part 'model/dv_date_time.dart';
part 'model/dv_duration.dart';
part 'model/dv_ehr_uri.dart';
part 'model/dv_encapsulated.dart';
part 'model/dv_identifier.dart';
part 'model/dv_interval.dart';
part 'model/dv_interval_of_date_time.dart';
part 'model/dv_multimedia.dart';
part 'model/dv_ordered.dart';
part 'model/dv_ordinal.dart';
part 'model/dv_parsable.dart';
part 'model/dv_proportion.dart';
part 'model/dv_quantified.dart';
part 'model/dv_quantity.dart';
part 'model/dv_scale.dart';
part 'model/dv_state.dart';
part 'model/dv_temporal.dart';
part 'model/dv_text.dart';
part 'model/dv_time.dart';
part 'model/dv_uri.dart';
part 'model/ehr.dart';
part 'model/ehr_status.dart';
part 'model/element.dart';
part 'model/error.dart';
part 'model/evaluation.dart';
part 'model/event.dart';
part 'model/event_context.dart';
part 'model/feeder_audit.dart';
part 'model/feeder_audit_details.dart';
part 'model/folder.dart';
part 'model/generic_id.dart';
part 'model/hier_object_id.dart';
part 'model/history.dart';
part 'model/imported_version.dart';
part 'model/instruction.dart';
part 'model/instruction_details.dart';
part 'model/ism_transition.dart';
part 'model/item.dart';
part 'model/item_list.dart';
part 'model/item_single.dart';
part 'model/item_structure.dart';
part 'model/item_table.dart';
part 'model/item_tree.dart';
part 'model/link.dart';
part 'model/locatable.dart';
part 'model/locatable_ref.dart';
part 'model/new_contribution.dart';
part 'model/object_id.dart';
part 'model/object_ref.dart';
part 'model/object_version_id.dart';
part 'model/observation.dart';
part 'model/original_version.dart';
part 'model/participation.dart';
part 'model/party_identified.dart';
part 'model/party_proxy.dart';
part 'model/party_ref.dart';
part 'model/party_related.dart';
part 'model/party_self.dart';
part 'model/pathable.dart';
part 'model/reference_range.dart';
part 'model/revision_history.dart';
part 'model/revision_history_item.dart';
part 'model/template_id.dart';
part 'model/term_mapping.dart';
part 'model/terminology_code.dart';
part 'model/terminology_id.dart';
part 'model/uid_based_id.dart';
part 'model/update_attestation.dart';
part 'model/update_audit.dart';
part 'model/update_version.dart';
part 'model/version.dart';
part 'model/versionable.dart';
part 'model/versioned_composition.dart';
part 'model/versioned_ehr_status.dart';
part 'model/versioned_object.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
