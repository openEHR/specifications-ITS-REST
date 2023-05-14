/*
EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2018 - 2023 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>19 Dec 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

API version: latest
Contact: info@openehr.org
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// checks if the EventContext type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &EventContext{}

// EventContext struct for EventContext
type EventContext struct {
	StartTime DvDateTime `json:"start_time"`
	EndTime *DvDateTime `json:"end_time,omitempty"`
	Location *string `json:"location,omitempty"`
	Setting DvCodedText `json:"setting"`
	OtherContext *ItemStructure `json:"other_context,omitempty"`
	HealthCareFacility *PartyIdentified `json:"health_care_facility,omitempty"`
	Participations []Participation `json:"participations,omitempty"`
}

// NewEventContext instantiates a new EventContext object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewEventContext(startTime DvDateTime, setting DvCodedText) *EventContext {
	this := EventContext{}
	return &this
}

// NewEventContextWithDefaults instantiates a new EventContext object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewEventContextWithDefaults() *EventContext {
	this := EventContext{}
	return &this
}

// GetStartTime returns the StartTime field value
func (o *EventContext) GetStartTime() DvDateTime {
	if o == nil {
		var ret DvDateTime
		return ret
	}

	return o.StartTime
}

// GetStartTimeOk returns a tuple with the StartTime field value
// and a boolean to check if the value has been set.
func (o *EventContext) GetStartTimeOk() (*DvDateTime, bool) {
	if o == nil {
		return nil, false
	}
	return &o.StartTime, true
}

// SetStartTime sets field value
func (o *EventContext) SetStartTime(v DvDateTime) {
	o.StartTime = v
}

// GetEndTime returns the EndTime field value if set, zero value otherwise.
func (o *EventContext) GetEndTime() DvDateTime {
	if o == nil || IsNil(o.EndTime) {
		var ret DvDateTime
		return ret
	}
	return *o.EndTime
}

// GetEndTimeOk returns a tuple with the EndTime field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EventContext) GetEndTimeOk() (*DvDateTime, bool) {
	if o == nil || IsNil(o.EndTime) {
		return nil, false
	}
	return o.EndTime, true
}

// HasEndTime returns a boolean if a field has been set.
func (o *EventContext) HasEndTime() bool {
	if o != nil && !IsNil(o.EndTime) {
		return true
	}

	return false
}

// SetEndTime gets a reference to the given DvDateTime and assigns it to the EndTime field.
func (o *EventContext) SetEndTime(v DvDateTime) {
	o.EndTime = &v
}

// GetLocation returns the Location field value if set, zero value otherwise.
func (o *EventContext) GetLocation() string {
	if o == nil || IsNil(o.Location) {
		var ret string
		return ret
	}
	return *o.Location
}

// GetLocationOk returns a tuple with the Location field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EventContext) GetLocationOk() (*string, bool) {
	if o == nil || IsNil(o.Location) {
		return nil, false
	}
	return o.Location, true
}

// HasLocation returns a boolean if a field has been set.
func (o *EventContext) HasLocation() bool {
	if o != nil && !IsNil(o.Location) {
		return true
	}

	return false
}

// SetLocation gets a reference to the given string and assigns it to the Location field.
func (o *EventContext) SetLocation(v string) {
	o.Location = &v
}

// GetSetting returns the Setting field value
func (o *EventContext) GetSetting() DvCodedText {
	if o == nil {
		var ret DvCodedText
		return ret
	}

	return o.Setting
}

// GetSettingOk returns a tuple with the Setting field value
// and a boolean to check if the value has been set.
func (o *EventContext) GetSettingOk() (*DvCodedText, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Setting, true
}

// SetSetting sets field value
func (o *EventContext) SetSetting(v DvCodedText) {
	o.Setting = v
}

// GetOtherContext returns the OtherContext field value if set, zero value otherwise.
func (o *EventContext) GetOtherContext() ItemStructure {
	if o == nil || IsNil(o.OtherContext) {
		var ret ItemStructure
		return ret
	}
	return *o.OtherContext
}

// GetOtherContextOk returns a tuple with the OtherContext field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EventContext) GetOtherContextOk() (*ItemStructure, bool) {
	if o == nil || IsNil(o.OtherContext) {
		return nil, false
	}
	return o.OtherContext, true
}

// HasOtherContext returns a boolean if a field has been set.
func (o *EventContext) HasOtherContext() bool {
	if o != nil && !IsNil(o.OtherContext) {
		return true
	}

	return false
}

// SetOtherContext gets a reference to the given ItemStructure and assigns it to the OtherContext field.
func (o *EventContext) SetOtherContext(v ItemStructure) {
	o.OtherContext = &v
}

// GetHealthCareFacility returns the HealthCareFacility field value if set, zero value otherwise.
func (o *EventContext) GetHealthCareFacility() PartyIdentified {
	if o == nil || IsNil(o.HealthCareFacility) {
		var ret PartyIdentified
		return ret
	}
	return *o.HealthCareFacility
}

// GetHealthCareFacilityOk returns a tuple with the HealthCareFacility field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EventContext) GetHealthCareFacilityOk() (*PartyIdentified, bool) {
	if o == nil || IsNil(o.HealthCareFacility) {
		return nil, false
	}
	return o.HealthCareFacility, true
}

// HasHealthCareFacility returns a boolean if a field has been set.
func (o *EventContext) HasHealthCareFacility() bool {
	if o != nil && !IsNil(o.HealthCareFacility) {
		return true
	}

	return false
}

// SetHealthCareFacility gets a reference to the given PartyIdentified and assigns it to the HealthCareFacility field.
func (o *EventContext) SetHealthCareFacility(v PartyIdentified) {
	o.HealthCareFacility = &v
}

// GetParticipations returns the Participations field value if set, zero value otherwise.
func (o *EventContext) GetParticipations() []Participation {
	if o == nil || IsNil(o.Participations) {
		var ret []Participation
		return ret
	}
	return o.Participations
}

// GetParticipationsOk returns a tuple with the Participations field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *EventContext) GetParticipationsOk() ([]Participation, bool) {
	if o == nil || IsNil(o.Participations) {
		return nil, false
	}
	return o.Participations, true
}

// HasParticipations returns a boolean if a field has been set.
func (o *EventContext) HasParticipations() bool {
	if o != nil && !IsNil(o.Participations) {
		return true
	}

	return false
}

// SetParticipations gets a reference to the given []Participation and assigns it to the Participations field.
func (o *EventContext) SetParticipations(v []Participation) {
	o.Participations = v
}

func (o EventContext) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o EventContext) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["start_time"] = o.StartTime
	if !IsNil(o.EndTime) {
		toSerialize["end_time"] = o.EndTime
	}
	if !IsNil(o.Location) {
		toSerialize["location"] = o.Location
	}
	toSerialize["setting"] = o.Setting
	if !IsNil(o.OtherContext) {
		toSerialize["other_context"] = o.OtherContext
	}
	if !IsNil(o.HealthCareFacility) {
		toSerialize["health_care_facility"] = o.HealthCareFacility
	}
	if !IsNil(o.Participations) {
		toSerialize["participations"] = o.Participations
	}
	return toSerialize, nil
}

type NullableEventContext struct {
	value *EventContext
	isSet bool
}

func (v NullableEventContext) Get() *EventContext {
	return v.value
}

func (v *NullableEventContext) Set(val *EventContext) {
	v.value = val
	v.isSet = true
}

func (v NullableEventContext) IsSet() bool {
	return v.isSet
}

func (v *NullableEventContext) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableEventContext(val *EventContext) *NullableEventContext {
	return &NullableEventContext{value: val, isSet: true}
}

func (v NullableEventContext) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableEventContext) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


