/*
EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to openAPI format</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

API version: latest
Contact: info@openehr.org
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// Locatable struct for Locatable
type Locatable struct {
	Name DvText `json:"name"`
	ArchetypeNodeId string `json:"archetype_node_id"`
	Uid *UidBasedId `json:"uid,omitempty"`
	Links []Link `json:"links,omitempty"`
	ArchetypeDetails *Archetyped `json:"archetype_details,omitempty"`
	FeederAudit *FeederAudit `json:"feeder_audit,omitempty"`
}

// NewLocatable instantiates a new Locatable object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewLocatable(name DvText, archetypeNodeId string) *Locatable {
	this := Locatable{}
	return &this
}

// NewLocatableWithDefaults instantiates a new Locatable object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewLocatableWithDefaults() *Locatable {
	this := Locatable{}
	return &this
}

// GetName returns the Name field value
func (o *Locatable) GetName() DvText {
	if o == nil {
		var ret DvText
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *Locatable) GetNameOk() (*DvText, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *Locatable) SetName(v DvText) {
	o.Name = v
}

// GetArchetypeNodeId returns the ArchetypeNodeId field value
func (o *Locatable) GetArchetypeNodeId() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ArchetypeNodeId
}

// GetArchetypeNodeIdOk returns a tuple with the ArchetypeNodeId field value
// and a boolean to check if the value has been set.
func (o *Locatable) GetArchetypeNodeIdOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ArchetypeNodeId, true
}

// SetArchetypeNodeId sets field value
func (o *Locatable) SetArchetypeNodeId(v string) {
	o.ArchetypeNodeId = v
}

// GetUid returns the Uid field value if set, zero value otherwise.
func (o *Locatable) GetUid() UidBasedId {
	if o == nil || isNil(o.Uid) {
		var ret UidBasedId
		return ret
	}
	return *o.Uid
}

// GetUidOk returns a tuple with the Uid field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Locatable) GetUidOk() (*UidBasedId, bool) {
	if o == nil || isNil(o.Uid) {
		return nil, false
	}
	return o.Uid, true
}

// HasUid returns a boolean if a field has been set.
func (o *Locatable) HasUid() bool {
	if o != nil && !isNil(o.Uid) {
		return true
	}

	return false
}

// SetUid gets a reference to the given UidBasedId and assigns it to the Uid field.
func (o *Locatable) SetUid(v UidBasedId) {
	o.Uid = &v
}

// GetLinks returns the Links field value if set, zero value otherwise.
func (o *Locatable) GetLinks() []Link {
	if o == nil || isNil(o.Links) {
		var ret []Link
		return ret
	}
	return o.Links
}

// GetLinksOk returns a tuple with the Links field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Locatable) GetLinksOk() ([]Link, bool) {
	if o == nil || isNil(o.Links) {
		return nil, false
	}
	return o.Links, true
}

// HasLinks returns a boolean if a field has been set.
func (o *Locatable) HasLinks() bool {
	if o != nil && !isNil(o.Links) {
		return true
	}

	return false
}

// SetLinks gets a reference to the given []Link and assigns it to the Links field.
func (o *Locatable) SetLinks(v []Link) {
	o.Links = v
}

// GetArchetypeDetails returns the ArchetypeDetails field value if set, zero value otherwise.
func (o *Locatable) GetArchetypeDetails() Archetyped {
	if o == nil || isNil(o.ArchetypeDetails) {
		var ret Archetyped
		return ret
	}
	return *o.ArchetypeDetails
}

// GetArchetypeDetailsOk returns a tuple with the ArchetypeDetails field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Locatable) GetArchetypeDetailsOk() (*Archetyped, bool) {
	if o == nil || isNil(o.ArchetypeDetails) {
		return nil, false
	}
	return o.ArchetypeDetails, true
}

// HasArchetypeDetails returns a boolean if a field has been set.
func (o *Locatable) HasArchetypeDetails() bool {
	if o != nil && !isNil(o.ArchetypeDetails) {
		return true
	}

	return false
}

// SetArchetypeDetails gets a reference to the given Archetyped and assigns it to the ArchetypeDetails field.
func (o *Locatable) SetArchetypeDetails(v Archetyped) {
	o.ArchetypeDetails = &v
}

// GetFeederAudit returns the FeederAudit field value if set, zero value otherwise.
func (o *Locatable) GetFeederAudit() FeederAudit {
	if o == nil || isNil(o.FeederAudit) {
		var ret FeederAudit
		return ret
	}
	return *o.FeederAudit
}

// GetFeederAuditOk returns a tuple with the FeederAudit field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *Locatable) GetFeederAuditOk() (*FeederAudit, bool) {
	if o == nil || isNil(o.FeederAudit) {
		return nil, false
	}
	return o.FeederAudit, true
}

// HasFeederAudit returns a boolean if a field has been set.
func (o *Locatable) HasFeederAudit() bool {
	if o != nil && !isNil(o.FeederAudit) {
		return true
	}

	return false
}

// SetFeederAudit gets a reference to the given FeederAudit and assigns it to the FeederAudit field.
func (o *Locatable) SetFeederAudit(v FeederAudit) {
	o.FeederAudit = &v
}

func (o Locatable) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["name"] = o.Name
	}
	if true {
		toSerialize["archetype_node_id"] = o.ArchetypeNodeId
	}
	if !isNil(o.Uid) {
		toSerialize["uid"] = o.Uid
	}
	if !isNil(o.Links) {
		toSerialize["links"] = o.Links
	}
	if !isNil(o.ArchetypeDetails) {
		toSerialize["archetype_details"] = o.ArchetypeDetails
	}
	if !isNil(o.FeederAudit) {
		toSerialize["feeder_audit"] = o.FeederAudit
	}
	return json.Marshal(toSerialize)
}

type NullableLocatable struct {
	value *Locatable
	isSet bool
}

func (v NullableLocatable) Get() *Locatable {
	return v.value
}

func (v *NullableLocatable) Set(val *Locatable) {
	v.value = val
	v.isSet = true
}

func (v NullableLocatable) IsSet() bool {
	return v.isSet
}

func (v *NullableLocatable) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableLocatable(val *Locatable) *NullableLocatable {
	return &NullableLocatable{value: val, isSet: true}
}

func (v NullableLocatable) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableLocatable) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


