/*
EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to OpenAPI Specification</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in YAML format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

API version: latest
Contact: info@openehr.org
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
)


type EHRApi interface {

	/*
	EhrCreate Create EHR

	Create a new `EHR` with an auto-generated identifier.

An EHR_STATUS resource needs to be always created and committed in the new EHR.
This resource MAY be also supplied by the client as the request body. 
If not supplied, a default EHR_STATUS will be used by the service with following attributes:
  - `is_queryable`: true
  - `is_modifiable`: true
  - `subject`: a PARTY_SELF object

All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@return ApiEhrCreateRequest
	*/
	EhrCreate(ctx context.Context) ApiEhrCreateRequest

	// EhrCreateExecute executes the request
	//  @return Ehr
	EhrCreateExecute(r ApiEhrCreateRequest) (*Ehr, *http.Response, error)

	/*
	EhrCreateWithId Create EHR with id

	Create a new EHR with the specified `ehr_id` identifier.

The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value. 
It is strongly RECOMMENDED that an UUID always be used for this.

An EHR_STATUS resource needs to be always created and committed in the new EHR.
This resource MAY be also supplied by the client as the request body. 
If not supplied, a default EHR_STATUS will be used by the service with following attributes:
  - `is_queryable`: true
  - `is_modifiable`: true
  - `subject`: a PARTY_SELF object

All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiEhrCreateWithIdRequest
	*/
	EhrCreateWithId(ctx context.Context, ehrId string) ApiEhrCreateWithIdRequest

	// EhrCreateWithIdExecute executes the request
	//  @return Ehr
	EhrCreateWithIdExecute(r ApiEhrCreateWithIdRequest) (*Ehr, *http.Response, error)

	/*
	EhrGetById Get EHR by id

	Retrieve the EHR with the specified `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiEhrGetByIdRequest
	*/
	EhrGetById(ctx context.Context, ehrId string) ApiEhrGetByIdRequest

	// EhrGetByIdExecute executes the request
	//  @return Ehr
	EhrGetByIdExecute(r ApiEhrGetByIdRequest) (*Ehr, *http.Response, error)

	/*
	EhrGetBySubject Get EHR by subject id

	Retrieve the EHR with the specified `subject_id` and `subject_namespace`.

These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and 
EHR_STATUS.subject.external_ref.namespace values.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@return ApiEhrGetBySubjectRequest
	*/
	EhrGetBySubject(ctx context.Context) ApiEhrGetBySubjectRequest

	// EhrGetBySubjectExecute executes the request
	//  @return Ehr
	EhrGetBySubjectExecute(r ApiEhrGetBySubjectRequest) (*Ehr, *http.Response, error)
}

// EHRApiService EHRApi service
type EHRApiService service

type ApiEhrCreateRequest struct {
	ctx context.Context
	ApiService EHRApi
	prefer *string
	ehrStatus *EhrStatus
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiEhrCreateRequest) Prefer(prefer string) ApiEhrCreateRequest {
	r.prefer = &prefer
	return r
}

// An EHR_STATUS resource MAY be also supplied by the client as the request body. 
func (r ApiEhrCreateRequest) EhrStatus(ehrStatus EhrStatus) ApiEhrCreateRequest {
	r.ehrStatus = &ehrStatus
	return r
}

func (r ApiEhrCreateRequest) Execute() (*Ehr, *http.Response, error) {
	return r.ApiService.EhrCreateExecute(r)
}

/*
EhrCreate Create EHR

Create a new `EHR` with an auto-generated identifier.

An EHR_STATUS resource needs to be always created and committed in the new EHR.
This resource MAY be also supplied by the client as the request body. 
If not supplied, a default EHR_STATUS will be used by the service with following attributes:
  - `is_queryable`: true
  - `is_modifiable`: true
  - `subject`: a PARTY_SELF object

All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiEhrCreateRequest
*/
func (a *EHRApiService) EhrCreate(ctx context.Context) ApiEhrCreateRequest {
	return ApiEhrCreateRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return Ehr
func (a *EHRApiService) EhrCreateExecute(r ApiEhrCreateRequest) (*Ehr, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Ehr
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "EHRApiService.EhrCreate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.prefer != nil {
		localVarHeaderParams["Prefer"] = parameterToString(*r.prefer, "")
	}
	// body params
	localVarPostBody = r.ehrStatus
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiEhrCreateWithIdRequest struct {
	ctx context.Context
	ApiService EHRApi
	ehrId string
	prefer *string
	ehrStatus *EhrStatus
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiEhrCreateWithIdRequest) Prefer(prefer string) ApiEhrCreateWithIdRequest {
	r.prefer = &prefer
	return r
}

// An EHR_STATUS resource MAY be also supplied by the client as the request body. 
func (r ApiEhrCreateWithIdRequest) EhrStatus(ehrStatus EhrStatus) ApiEhrCreateWithIdRequest {
	r.ehrStatus = &ehrStatus
	return r
}

func (r ApiEhrCreateWithIdRequest) Execute() (*Ehr, *http.Response, error) {
	return r.ApiService.EhrCreateWithIdExecute(r)
}

/*
EhrCreateWithId Create EHR with id

Create a new EHR with the specified `ehr_id` identifier.

The value of the `ehr_id` unique identifier MUST be valid [HIER_OBJECT_ID](https://specifications.openehr.org/releases/BASE/latest/base_types.html#_hier_object_id_class) value. 
It is strongly RECOMMENDED that an UUID always be used for this.

An EHR_STATUS resource needs to be always created and committed in the new EHR.
This resource MAY be also supplied by the client as the request body. 
If not supplied, a default EHR_STATUS will be used by the service with following attributes:
  - `is_queryable`: true
  - `is_modifiable`: true
  - `subject`: a PARTY_SELF object

All other required EHR attributes and resources will be automatically created as needed by the [EHR creation semantics](https://specifications.openehr.org/releases/RM/latest/ehr.html#_ehr_creation_semantics).


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiEhrCreateWithIdRequest
*/
func (a *EHRApiService) EhrCreateWithId(ctx context.Context, ehrId string) ApiEhrCreateWithIdRequest {
	return ApiEhrCreateWithIdRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Ehr
func (a *EHRApiService) EhrCreateWithIdExecute(r ApiEhrCreateWithIdRequest) (*Ehr, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPut
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Ehr
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "EHRApiService.EhrCreateWithId")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.prefer != nil {
		localVarHeaderParams["Prefer"] = parameterToString(*r.prefer, "")
	}
	// body params
	localVarPostBody = r.ehrStatus
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiEhrGetByIdRequest struct {
	ctx context.Context
	ApiService EHRApi
	ehrId string
}

func (r ApiEhrGetByIdRequest) Execute() (*Ehr, *http.Response, error) {
	return r.ApiService.EhrGetByIdExecute(r)
}

/*
EhrGetById Get EHR by id

Retrieve the EHR with the specified `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiEhrGetByIdRequest
*/
func (a *EHRApiService) EhrGetById(ctx context.Context, ehrId string) ApiEhrGetByIdRequest {
	return ApiEhrGetByIdRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Ehr
func (a *EHRApiService) EhrGetByIdExecute(r ApiEhrGetByIdRequest) (*Ehr, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Ehr
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "EHRApiService.EhrGetById")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}

type ApiEhrGetBySubjectRequest struct {
	ctx context.Context
	ApiService EHRApi
	subjectId *string
	subjectNamespace *string
}

// The EHR subject id. 
func (r ApiEhrGetBySubjectRequest) SubjectId(subjectId string) ApiEhrGetBySubjectRequest {
	r.subjectId = &subjectId
	return r
}

// The EHR subject id namespace. 
func (r ApiEhrGetBySubjectRequest) SubjectNamespace(subjectNamespace string) ApiEhrGetBySubjectRequest {
	r.subjectNamespace = &subjectNamespace
	return r
}

func (r ApiEhrGetBySubjectRequest) Execute() (*Ehr, *http.Response, error) {
	return r.ApiService.EhrGetBySubjectExecute(r)
}

/*
EhrGetBySubject Get EHR by subject id

Retrieve the EHR with the specified `subject_id` and `subject_namespace`.

These subject parameters will be matched against EHR's EHR_STATUS.subject.external_ref.id.value and 
EHR_STATUS.subject.external_ref.namespace values.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @return ApiEhrGetBySubjectRequest
*/
func (a *EHRApiService) EhrGetBySubject(ctx context.Context) ApiEhrGetBySubjectRequest {
	return ApiEhrGetBySubjectRequest{
		ApiService: a,
		ctx: ctx,
	}
}

// Execute executes the request
//  @return Ehr
func (a *EHRApiService) EhrGetBySubjectExecute(r ApiEhrGetBySubjectRequest) (*Ehr, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Ehr
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "EHRApiService.EhrGetBySubject")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr"

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.subjectId == nil {
		return localVarReturnValue, nil, reportError("subjectId is required and must be specified")
	}
	if r.subjectNamespace == nil {
		return localVarReturnValue, nil, reportError("subjectNamespace is required and must be specified")
	}

	localVarQueryParams.Add("subject_id", parameterToString(*r.subjectId, ""))
	localVarQueryParams.Add("subject_namespace", parameterToString(*r.subjectNamespace, ""))
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
