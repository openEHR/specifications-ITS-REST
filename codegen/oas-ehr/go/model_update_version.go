/*
EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

API version: latest
Contact: info@openehr.org
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// UpdateVersion struct for UpdateVersion
type UpdateVersion struct {
	PrecedingVersionUid *ObjectVersionId `json:"preceding_version_uid,omitempty"`
	Signature *string `json:"signature,omitempty"`
	LifecycleState TerminologyCode `json:"lifecycle_state"`
	Attestations []UpdateAttestation `json:"attestations,omitempty"`
	Data Versionable `json:"data"`
	CommitAudit UpdateAudit `json:"commit_audit"`
}

// NewUpdateVersion instantiates a new UpdateVersion object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewUpdateVersion(lifecycleState TerminologyCode, data Versionable, commitAudit UpdateAudit) *UpdateVersion {
	this := UpdateVersion{}
	this.LifecycleState = lifecycleState
	this.Data = data
	this.CommitAudit = commitAudit
	return &this
}

// NewUpdateVersionWithDefaults instantiates a new UpdateVersion object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewUpdateVersionWithDefaults() *UpdateVersion {
	this := UpdateVersion{}
	return &this
}

// GetPrecedingVersionUid returns the PrecedingVersionUid field value if set, zero value otherwise.
func (o *UpdateVersion) GetPrecedingVersionUid() ObjectVersionId {
	if o == nil || isNil(o.PrecedingVersionUid) {
		var ret ObjectVersionId
		return ret
	}
	return *o.PrecedingVersionUid
}

// GetPrecedingVersionUidOk returns a tuple with the PrecedingVersionUid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetPrecedingVersionUidOk() (*ObjectVersionId, bool) {
	if o == nil || isNil(o.PrecedingVersionUid) {
		return nil, false
	}
	return o.PrecedingVersionUid, true
}

// HasPrecedingVersionUid returns a boolean if a field has been set.
func (o *UpdateVersion) HasPrecedingVersionUid() bool {
	if o != nil && !isNil(o.PrecedingVersionUid) {
		return true
	}

	return false
}

// SetPrecedingVersionUid gets a reference to the given ObjectVersionId and assigns it to the PrecedingVersionUid field.
func (o *UpdateVersion) SetPrecedingVersionUid(v ObjectVersionId) {
	o.PrecedingVersionUid = &v
}

// GetSignature returns the Signature field value if set, zero value otherwise.
func (o *UpdateVersion) GetSignature() string {
	if o == nil || isNil(o.Signature) {
		var ret string
		return ret
	}
	return *o.Signature
}

// GetSignatureOk returns a tuple with the Signature field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetSignatureOk() (*string, bool) {
	if o == nil || isNil(o.Signature) {
		return nil, false
	}
	return o.Signature, true
}

// HasSignature returns a boolean if a field has been set.
func (o *UpdateVersion) HasSignature() bool {
	if o != nil && !isNil(o.Signature) {
		return true
	}

	return false
}

// SetSignature gets a reference to the given string and assigns it to the Signature field.
func (o *UpdateVersion) SetSignature(v string) {
	o.Signature = &v
}

// GetLifecycleState returns the LifecycleState field value
func (o *UpdateVersion) GetLifecycleState() TerminologyCode {
	if o == nil {
		var ret TerminologyCode
		return ret
	}

	return o.LifecycleState
}

// GetLifecycleStateOk returns a tuple with the LifecycleState field value
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetLifecycleStateOk() (*TerminologyCode, bool) {
	if o == nil {
		return nil, false
	}
	return &o.LifecycleState, true
}

// SetLifecycleState sets field value
func (o *UpdateVersion) SetLifecycleState(v TerminologyCode) {
	o.LifecycleState = v
}

// GetAttestations returns the Attestations field value if set, zero value otherwise.
func (o *UpdateVersion) GetAttestations() []UpdateAttestation {
	if o == nil || isNil(o.Attestations) {
		var ret []UpdateAttestation
		return ret
	}
	return o.Attestations
}

// GetAttestationsOk returns a tuple with the Attestations field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetAttestationsOk() ([]UpdateAttestation, bool) {
	if o == nil || isNil(o.Attestations) {
		return nil, false
	}
	return o.Attestations, true
}

// HasAttestations returns a boolean if a field has been set.
func (o *UpdateVersion) HasAttestations() bool {
	if o != nil && !isNil(o.Attestations) {
		return true
	}

	return false
}

// SetAttestations gets a reference to the given []UpdateAttestation and assigns it to the Attestations field.
func (o *UpdateVersion) SetAttestations(v []UpdateAttestation) {
	o.Attestations = v
}

// GetData returns the Data field value
func (o *UpdateVersion) GetData() Versionable {
	if o == nil {
		var ret Versionable
		return ret
	}

	return o.Data
}

// GetDataOk returns a tuple with the Data field value
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetDataOk() (*Versionable, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Data, true
}

// SetData sets field value
func (o *UpdateVersion) SetData(v Versionable) {
	o.Data = v
}

// GetCommitAudit returns the CommitAudit field value
func (o *UpdateVersion) GetCommitAudit() UpdateAudit {
	if o == nil {
		var ret UpdateAudit
		return ret
	}

	return o.CommitAudit
}

// GetCommitAuditOk returns a tuple with the CommitAudit field value
// and a boolean to check if the value has been set.
func (o *UpdateVersion) GetCommitAuditOk() (*UpdateAudit, bool) {
	if o == nil {
		return nil, false
	}
	return &o.CommitAudit, true
}

// SetCommitAudit sets field value
func (o *UpdateVersion) SetCommitAudit(v UpdateAudit) {
	o.CommitAudit = v
}

func (o UpdateVersion) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.PrecedingVersionUid) {
		toSerialize["preceding_version_uid"] = o.PrecedingVersionUid
	}
	if !isNil(o.Signature) {
		toSerialize["signature"] = o.Signature
	}
	if true {
		toSerialize["lifecycle_state"] = o.LifecycleState
	}
	if !isNil(o.Attestations) {
		toSerialize["attestations"] = o.Attestations
	}
	if true {
		toSerialize["data"] = o.Data
	}
	if true {
		toSerialize["commit_audit"] = o.CommitAudit
	}
	return json.Marshal(toSerialize)
}

type NullableUpdateVersion struct {
	value *UpdateVersion
	isSet bool
}

func (v NullableUpdateVersion) Get() *UpdateVersion {
	return v.value
}

func (v *NullableUpdateVersion) Set(val *UpdateVersion) {
	v.value = val
	v.isSet = true
}

func (v NullableUpdateVersion) IsSet() bool {
	return v.isSet
}

func (v *NullableUpdateVersion) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableUpdateVersion(val *UpdateVersion) *NullableUpdateVersion {
	return &NullableUpdateVersion{value: val, isSet: true}
}

func (v NullableUpdateVersion) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableUpdateVersion) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


