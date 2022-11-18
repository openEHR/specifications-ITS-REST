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

// DvMultimedia struct for DvMultimedia
type DvMultimedia struct {
	Type *string `json:"_type,omitempty"`
	AlternateText *string `json:"alternate_text,omitempty"`
	Uri *DvUri `json:"uri,omitempty"`
	Data *string `json:"data,omitempty"`
	MediaType CodePhrase `json:"media_type"`
	CompressionAlgorithm *CodePhrase `json:"compression_algorithm,omitempty"`
	IntegrityCheck *string `json:"integrity_check,omitempty"`
	IntegrityCheckAlgorithm *CodePhrase `json:"integrity_check_algorithm,omitempty"`
	Thumbnail *DvMultimedia `json:"thumbnail,omitempty"`
	Size int32 `json:"size"`
}

// NewDvMultimedia instantiates a new DvMultimedia object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewDvMultimedia(mediaType CodePhrase, size int32) *DvMultimedia {
	this := DvMultimedia{}
	var type_ string = "DV_MULTIMEDIA"
	this.Type = &type_
	return &this
}

// NewDvMultimediaWithDefaults instantiates a new DvMultimedia object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewDvMultimediaWithDefaults() *DvMultimedia {
	this := DvMultimedia{}
	var type_ string = "DV_MULTIMEDIA"
	this.Type = &type_
	return &this
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *DvMultimedia) GetType() string {
	if o == nil || isNil(o.Type) {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetTypeOk() (*string, bool) {
	if o == nil || isNil(o.Type) {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *DvMultimedia) HasType() bool {
	if o != nil && !isNil(o.Type) {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *DvMultimedia) SetType(v string) {
	o.Type = &v
}

// GetAlternateText returns the AlternateText field value if set, zero value otherwise.
func (o *DvMultimedia) GetAlternateText() string {
	if o == nil || isNil(o.AlternateText) {
		var ret string
		return ret
	}
	return *o.AlternateText
}

// GetAlternateTextOk returns a tuple with the AlternateText field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetAlternateTextOk() (*string, bool) {
	if o == nil || isNil(o.AlternateText) {
		return nil, false
	}
	return o.AlternateText, true
}

// HasAlternateText returns a boolean if a field has been set.
func (o *DvMultimedia) HasAlternateText() bool {
	if o != nil && !isNil(o.AlternateText) {
		return true
	}

	return false
}

// SetAlternateText gets a reference to the given string and assigns it to the AlternateText field.
func (o *DvMultimedia) SetAlternateText(v string) {
	o.AlternateText = &v
}

// GetUri returns the Uri field value if set, zero value otherwise.
func (o *DvMultimedia) GetUri() DvUri {
	if o == nil || isNil(o.Uri) {
		var ret DvUri
		return ret
	}
	return *o.Uri
}

// GetUriOk returns a tuple with the Uri field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetUriOk() (*DvUri, bool) {
	if o == nil || isNil(o.Uri) {
		return nil, false
	}
	return o.Uri, true
}

// HasUri returns a boolean if a field has been set.
func (o *DvMultimedia) HasUri() bool {
	if o != nil && !isNil(o.Uri) {
		return true
	}

	return false
}

// SetUri gets a reference to the given DvUri and assigns it to the Uri field.
func (o *DvMultimedia) SetUri(v DvUri) {
	o.Uri = &v
}

// GetData returns the Data field value if set, zero value otherwise.
func (o *DvMultimedia) GetData() string {
	if o == nil || isNil(o.Data) {
		var ret string
		return ret
	}
	return *o.Data
}

// GetDataOk returns a tuple with the Data field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetDataOk() (*string, bool) {
	if o == nil || isNil(o.Data) {
		return nil, false
	}
	return o.Data, true
}

// HasData returns a boolean if a field has been set.
func (o *DvMultimedia) HasData() bool {
	if o != nil && !isNil(o.Data) {
		return true
	}

	return false
}

// SetData gets a reference to the given string and assigns it to the Data field.
func (o *DvMultimedia) SetData(v string) {
	o.Data = &v
}

// GetMediaType returns the MediaType field value
func (o *DvMultimedia) GetMediaType() CodePhrase {
	if o == nil {
		var ret CodePhrase
		return ret
	}

	return o.MediaType
}

// GetMediaTypeOk returns a tuple with the MediaType field value
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetMediaTypeOk() (*CodePhrase, bool) {
	if o == nil {
		return nil, false
	}
	return &o.MediaType, true
}

// SetMediaType sets field value
func (o *DvMultimedia) SetMediaType(v CodePhrase) {
	o.MediaType = v
}

// GetCompressionAlgorithm returns the CompressionAlgorithm field value if set, zero value otherwise.
func (o *DvMultimedia) GetCompressionAlgorithm() CodePhrase {
	if o == nil || isNil(o.CompressionAlgorithm) {
		var ret CodePhrase
		return ret
	}
	return *o.CompressionAlgorithm
}

// GetCompressionAlgorithmOk returns a tuple with the CompressionAlgorithm field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetCompressionAlgorithmOk() (*CodePhrase, bool) {
	if o == nil || isNil(o.CompressionAlgorithm) {
		return nil, false
	}
	return o.CompressionAlgorithm, true
}

// HasCompressionAlgorithm returns a boolean if a field has been set.
func (o *DvMultimedia) HasCompressionAlgorithm() bool {
	if o != nil && !isNil(o.CompressionAlgorithm) {
		return true
	}

	return false
}

// SetCompressionAlgorithm gets a reference to the given CodePhrase and assigns it to the CompressionAlgorithm field.
func (o *DvMultimedia) SetCompressionAlgorithm(v CodePhrase) {
	o.CompressionAlgorithm = &v
}

// GetIntegrityCheck returns the IntegrityCheck field value if set, zero value otherwise.
func (o *DvMultimedia) GetIntegrityCheck() string {
	if o == nil || isNil(o.IntegrityCheck) {
		var ret string
		return ret
	}
	return *o.IntegrityCheck
}

// GetIntegrityCheckOk returns a tuple with the IntegrityCheck field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetIntegrityCheckOk() (*string, bool) {
	if o == nil || isNil(o.IntegrityCheck) {
		return nil, false
	}
	return o.IntegrityCheck, true
}

// HasIntegrityCheck returns a boolean if a field has been set.
func (o *DvMultimedia) HasIntegrityCheck() bool {
	if o != nil && !isNil(o.IntegrityCheck) {
		return true
	}

	return false
}

// SetIntegrityCheck gets a reference to the given string and assigns it to the IntegrityCheck field.
func (o *DvMultimedia) SetIntegrityCheck(v string) {
	o.IntegrityCheck = &v
}

// GetIntegrityCheckAlgorithm returns the IntegrityCheckAlgorithm field value if set, zero value otherwise.
func (o *DvMultimedia) GetIntegrityCheckAlgorithm() CodePhrase {
	if o == nil || isNil(o.IntegrityCheckAlgorithm) {
		var ret CodePhrase
		return ret
	}
	return *o.IntegrityCheckAlgorithm
}

// GetIntegrityCheckAlgorithmOk returns a tuple with the IntegrityCheckAlgorithm field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetIntegrityCheckAlgorithmOk() (*CodePhrase, bool) {
	if o == nil || isNil(o.IntegrityCheckAlgorithm) {
		return nil, false
	}
	return o.IntegrityCheckAlgorithm, true
}

// HasIntegrityCheckAlgorithm returns a boolean if a field has been set.
func (o *DvMultimedia) HasIntegrityCheckAlgorithm() bool {
	if o != nil && !isNil(o.IntegrityCheckAlgorithm) {
		return true
	}

	return false
}

// SetIntegrityCheckAlgorithm gets a reference to the given CodePhrase and assigns it to the IntegrityCheckAlgorithm field.
func (o *DvMultimedia) SetIntegrityCheckAlgorithm(v CodePhrase) {
	o.IntegrityCheckAlgorithm = &v
}

// GetThumbnail returns the Thumbnail field value if set, zero value otherwise.
func (o *DvMultimedia) GetThumbnail() DvMultimedia {
	if o == nil || isNil(o.Thumbnail) {
		var ret DvMultimedia
		return ret
	}
	return *o.Thumbnail
}

// GetThumbnailOk returns a tuple with the Thumbnail field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetThumbnailOk() (*DvMultimedia, bool) {
	if o == nil || isNil(o.Thumbnail) {
		return nil, false
	}
	return o.Thumbnail, true
}

// HasThumbnail returns a boolean if a field has been set.
func (o *DvMultimedia) HasThumbnail() bool {
	if o != nil && !isNil(o.Thumbnail) {
		return true
	}

	return false
}

// SetThumbnail gets a reference to the given DvMultimedia and assigns it to the Thumbnail field.
func (o *DvMultimedia) SetThumbnail(v DvMultimedia) {
	o.Thumbnail = &v
}

// GetSize returns the Size field value
func (o *DvMultimedia) GetSize() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Size
}

// GetSizeOk returns a tuple with the Size field value
// and a boolean to check if the value has been set.
func (o *DvMultimedia) GetSizeOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Size, true
}

// SetSize sets field value
func (o *DvMultimedia) SetSize(v int32) {
	o.Size = v
}

func (o DvMultimedia) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if !isNil(o.Type) {
		toSerialize["_type"] = o.Type
	}
	if !isNil(o.AlternateText) {
		toSerialize["alternate_text"] = o.AlternateText
	}
	if !isNil(o.Uri) {
		toSerialize["uri"] = o.Uri
	}
	if !isNil(o.Data) {
		toSerialize["data"] = o.Data
	}
	if true {
		toSerialize["media_type"] = o.MediaType
	}
	if !isNil(o.CompressionAlgorithm) {
		toSerialize["compression_algorithm"] = o.CompressionAlgorithm
	}
	if !isNil(o.IntegrityCheck) {
		toSerialize["integrity_check"] = o.IntegrityCheck
	}
	if !isNil(o.IntegrityCheckAlgorithm) {
		toSerialize["integrity_check_algorithm"] = o.IntegrityCheckAlgorithm
	}
	if !isNil(o.Thumbnail) {
		toSerialize["thumbnail"] = o.Thumbnail
	}
	if true {
		toSerialize["size"] = o.Size
	}
	return json.Marshal(toSerialize)
}

type NullableDvMultimedia struct {
	value *DvMultimedia
	isSet bool
}

func (v NullableDvMultimedia) Get() *DvMultimedia {
	return v.value
}

func (v *NullableDvMultimedia) Set(val *DvMultimedia) {
	v.value = val
	v.isSet = true
}

func (v NullableDvMultimedia) IsSet() bool {
	return v.isSet
}

func (v *NullableDvMultimedia) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableDvMultimedia(val *DvMultimedia) *NullableDvMultimedia {
	return &NullableDvMultimedia{value: val, isSet: true}
}

func (v NullableDvMultimedia) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableDvMultimedia) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


