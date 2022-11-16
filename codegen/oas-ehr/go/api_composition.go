/*
EHR API

<table>     <colgroup>         <col style=\"width: 20%;\">         <col style=\"width: 80%;\">     </colgroup>     <thead>     <tr>         <th colspan=\"2\">© 2003 - 2022 The openEHR Foundation</th>     </tr>     </thead>     <tbody>     <tr>         <td colspan=\"2\">             The <a href=\"https://www.openEHR.org\" target=\"_blank\" rel=\"noopener\">openEHR Foundation</a> is an independent, non-profit foundation, facilitating the sharing of health records by consumers and clinicians via open specifications, clinical models and open platform implementations.         </td>     </tr>     <tr>         <td><strong>Licence</strong></td>         <td><span class=\"image\"><img src=\"https://specifications.openehr.org/images/cc-by-nd-88x31.png\" alt=\"image\"></span> Creative Commons Attribution-NoDerivs 3.0 Unported.             <a href=\"https://creativecommons.org/licenses/by-nd/3.0/\" class=\"bare\">https://creativecommons.org/licenses/by-nd/3.0/</a>         </td>     </tr>     <tr>         <td><strong>Support</strong></td>         <td>Issues: <a href=\"https://specifications.openehr.org/components/ITS/open_issues\" target=\"_blank\" rel=\"noopener\">Problem Reports</a><br>             Web: <a href=\"https://specifications.openehr.org\" target=\"_blank\" rel=\"noopener\">specifications.openEHR.org</a>         </td>     </tr>     </tbody> </table>  ### Amendment Record  <table>     <colgroup>         <col style=\"width: 9%;\">         <col style=\"width: 55%;\">         <col style=\"width: 18%;\">         <col style=\"width: 18%;\">     </colgroup>     <thead>     <tr>         <th>Issue</th>         <th>Details</th>         <th>Raiser, Implementer</th>         <th>Completed</th>     </tr>     </thead>     <tbody>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/latest\" target=\"_blank\" rel=\"noopener\">Release-1.0.3 (unreleased)</a></th>     </tr>     <tr>         <td>5.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-66\" target=\"_blank\" rel=\"noopener\">SPECITS-66</a>:             Migrate REST API specs to openAPI format</td>         <td>S Iancu</td>         <td>14 Nov 2022</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.2\" target=\"_blank\" rel=\"noopener\">Release-1.0.2</a></th>     </tr>     <tr>         <td>4.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-41\" target=\"_blank\" rel=\"noopener\">SPECITS-41</a>:             Add double quotes to ETag and If-Match headers</td>         <td>S Iancu</td>         <td>21 Mar 2021</td>     </tr>     <tr>         <td>4.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-49\" target=\"_blank\" rel=\"noopener\">SPECITS-49</a>:             Describing Resource Identification; add clarification over getting COMPOSITIONs by with `version_uid` vs `versioned_object_uid`</td>         <td>J Smolka, M Polajnar, S Iancu</td>         <td>08 Mar 2021</td>     </tr>     <tr>         <td>4.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-52\" target=\"_blank\" rel=\"noopener\">SPECITS-52</a>:             Fix wrong example on revision history of the VERSIONED_COMPOSITION and VERSIONED_EHR_STATUS</td>         <td>J Smolka, S Iancu</td>         <td>06 Mar 2021</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1\" target=\"_blank\" rel=\"noopener\">Release-1.0.1</a></th>     </tr>     <tr>         <td>3.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-38\" target=\"_blank\" rel=\"noopener\">SPECITS-38</a>:             Fix response status code for semantic validation errors (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>)</td>         <td>P Pazos, S Iancu</td>         <td>01 Oct 2019</td>     </tr>     <tr>         <td>3.1</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-40\" target=\"_blank\" rel=\"noopener\">SPECITS-40</a>:             Fix and improve documentation on EHR (fixes also             <a href=\"https://specifications.openehr.org/tickets/SPECPR-312\" target=\"_blank\" rel=\"noopener\">SPECPR-312</a>)</td>         <td>P Pazos, S Iancu</td>         <td>28 Sep 2019</td>     </tr>     <tr>         <td>3.0</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-32\" target=\"_blank\" rel=\"noopener\">SPECITS-32</a>: Fix typos and minor documentary errors (fixes             <a href=\"https://specifications.openehr.org/tickets/SPECPR-252\" target=\"_blank\" rel=\"noopener\">SPECPR-253</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-255\" target=\"_blank\" rel=\"noopener\">SPECPR-255</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-298\" target=\"_blank\" rel=\"noopener\">SPECPR-298</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-333\" target=\"_blank\" rel=\"noopener\">SPECPR-333</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECPR-337\" target=\"_blank\" rel=\"noopener\">SPECPR-337</a>)</td>         <td>J Smolka, P Pazos, E Sundvall, T Beale, S Iancu</td>         <td>1 Sep 2019</td>     </tr>     <tr>         <td>2.2</td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-24\" target=\"_blank\" rel=\"noopener\">SPECITS-24</a>: Added changelog</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td></td>         <td><a href=\"https://specifications.openehr.org/tickets/SPECITS-25\" target=\"_blank\" rel=\"noopener\">SPECITS-25</a>,             <a href=\"https://specifications.openehr.org/tickets/SPECITS-29\" target=\"_blank\" rel=\"noopener\">SPECITS-29</a>: Change layout and structure</td>         <td>J Smolka, S Iancu</td>         <td>12 May 2019</td>     </tr>     <tr>         <td>2.1</td>         <td>Update links to new openEHR specifications website</td>         <td>S Iancu</td>         <td>16 Dec 2018</td>     </tr>     <tr>         <th colspan=\"4\"><a href=\"https://specifications.openehr.org/releases/ITS-REST/Release-1.0.0\" target=\"_blank\" rel=\"noopener\">Release-1.0.0</a></th>     </tr>     </tbody> </table>   # Intro   ## Acknowledgements  ### Editor - Sebastian Iancu, Architect, Code24, Netherlands  ### Contributors This specification benefited from wide formal and informal input from the openEHR and wider health informatics community. The openEHR Foundation would like to recognise the following people for their contributions. - Birger Haarbrandt, MSc, Peter L. Reichertz Institut for Medical Informatics (PLRI), Germany - Bjørn Næss, DIPS, Norway - Bostjan Lah, Senior Architect, Better, Slovenia - Erik Sundvall, Information Architect at Karolinska University Hospital, Sweden - Heath Frankel, Ocean Informatics, Australia - Ian McNicoll MD, FreshEHR, UK - Jake Smolka, Software Engineer, Better, Slovenia - Matija Polajnar, PhD, Software Engineer, Better, Slovenia - Pablo Pazos Gutierrez, Senior engineer, CaboLabs, Uruguay - Rong Chen MD, PhD, Cambio Healthcare Systems, Sweden - Sebastian Iancu, Architect, Code24, Netherlands - Seref Arikan, MEcon, Ocean Informatics UK, Centre for Health Informatics and Multi-professional Education (CHIME) UK - Thomas Beale, Ars Semantica UK, openEHR Foundation Management Board  ### Trademarks - 'openEHR' is a trademark of the [openEHR Foundation](https://www.openEHR.org) - 'OpenAPI' is a trademark of the [The Linux Foundation](https://www.linuxfoundation.org)   ## Preface  ### Purpose  This specification describes service endpoints, resources and operations as well as details of requests and responses that interacts with EHR openEHR API in a RESTful manner.  ### Related Documents  Prerequisite documents for reading this document include:  - The [EHR Information Model](https://specifications.openehr.org/releases/RM/latest/ehr.html#_the_ehr_information_model)  Related documents include:  - The [openEHR Architecture Overview](https://specifications.openehr.org/releases/BASE/latest/architecture_overview.html) - The [openEHR Global Class Index](https://specifications.openehr.org/classes) - The [XML-Schemas (XSD)](https://specifications.openehr.org/releases/ITS-XML/latest) - The [JSON-Schemas](https://specifications.openehr.org/releases/ITS-JSON/latest) and [Simplified Data Template (SDT)](simplified_data_template.html) - The [openEHR Platform Abstract Service Model](https://specifications.openehr.org/releases/SM/latest/openehr_platform.html)  ### Status  This specification is in the `STABLE` state, and can be downloaded as [OpenAPI specification](https://spec.openapis.org/oas/v3.0.3) file (in yaml format) [for validation](computable/OAS/ehr-validation.openapi.yaml), or [for code generators](computable/OAS/ehr-codegen.openapi.yaml). Users are encouraged to comment on and/or advise on these paragraphs as well as the main content.  The development version of this document can be found at <https://specifications.openehr.org/releases/ITS-REST/latest/ehr.html>.  ### Feedback  Feedback may be provided on the [Implementation Technology Specifications forum](https://discourse.openehr.org/c/specifications/its/41).  Issues may be raised on the [specifications Problem Report tracker](https://openehr.atlassian.net/browse/SPECPR).  To see changes made due to previously reported issues, see the [ITS component Change Request tracker](https://specifications.openehr.org/components/ITS/history).  ### Conformance  tbd.  

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


type COMPOSITIONApi interface {

	/*
	CompositionCreate Create COMPOSITION

	Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiCompositionCreateRequest
	*/
	CompositionCreate(ctx context.Context, ehrId string) ApiCompositionCreateRequest

	// CompositionCreateExecute executes the request
	//  @return Composition
	CompositionCreateExecute(r ApiCompositionCreateRequest) (*Composition, *http.Response, error)

	/*
	CompositionDelete Delete COMPOSITION

	Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
	@return ApiCompositionDeleteRequest
	*/
	CompositionDelete(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionDeleteRequest

	// CompositionDeleteExecute executes the request
	CompositionDeleteExecute(r ApiCompositionDeleteRequest) (*http.Response, error)

	/*
	CompositionGet Get COMPOSITION

	Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).

When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.

See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
	@return ApiCompositionGetRequest
	*/
	CompositionGet(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionGetRequest

	// CompositionGetExecute executes the request
	//  @return Composition
	CompositionGetExecute(r ApiCompositionGetRequest) (*Composition, *http.Response, error)

	/*
	CompositionUpdate Update COMPOSITION

	Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).

If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL. 

The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
	@return ApiCompositionUpdateRequest
	*/
	CompositionUpdate(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionUpdateRequest

	// CompositionUpdateExecute executes the request
	//  @return Composition
	CompositionUpdateExecute(r ApiCompositionUpdateRequest) (*Composition, *http.Response, error)

	/*
	VersionedCompositionGet Get versioned COMPOSITION

	Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
	@return ApiVersionedCompositionGetRequest
	*/
	VersionedCompositionGet(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionGetRequest

	// VersionedCompositionGetExecute executes the request
	//  @return VersionedComposition
	VersionedCompositionGetExecute(r ApiVersionedCompositionGetRequest) (*VersionedComposition, *http.Response, error)

	/*
	VersionedCompositionRevisionHistory Get versioned COMPOSITION revision history

	Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
	@return ApiVersionedCompositionRevisionHistoryRequest
	*/
	VersionedCompositionRevisionHistory(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionRevisionHistoryRequest

	// VersionedCompositionRevisionHistoryExecute executes the request
	//  @return RevisionHistory
	VersionedCompositionRevisionHistoryExecute(r ApiVersionedCompositionRevisionHistoryRequest) (*RevisionHistory, *http.Response, error)

	/*
	VersionedCompositionVersionGetAtTime Get versioned COMPOSITION version at time

	Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
	@return ApiVersionedCompositionVersionGetAtTimeRequest
	*/
	VersionedCompositionVersionGetAtTime(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionVersionGetAtTimeRequest

	// VersionedCompositionVersionGetAtTimeExecute executes the request
	//  @return Version
	VersionedCompositionVersionGetAtTimeExecute(r ApiVersionedCompositionVersionGetAtTimeRequest) (*Version, *http.Response, error)

	/*
	VersionedCompositionVersionGetById Get versioned COMPOSITION version by id

	Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
	@param versionUid VERSION identifier taken from VERSION.uid.value. 
	@return ApiVersionedCompositionVersionGetByIdRequest
	*/
	VersionedCompositionVersionGetById(ctx context.Context, ehrId string, versionedObjectUid string, versionUid string) ApiVersionedCompositionVersionGetByIdRequest

	// VersionedCompositionVersionGetByIdExecute executes the request
	//  @return Version
	VersionedCompositionVersionGetByIdExecute(r ApiVersionedCompositionVersionGetByIdRequest) (*Version, *http.Response, error)
}

// COMPOSITIONApiService COMPOSITIONApi service
type COMPOSITIONApiService service

type ApiCompositionCreateRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	composition *Composition
	prefer *string
}

// The COMPOSITION. 
func (r ApiCompositionCreateRequest) Composition(composition Composition) ApiCompositionCreateRequest {
	r.composition = &composition
	return r
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiCompositionCreateRequest) Prefer(prefer string) ApiCompositionCreateRequest {
	r.prefer = &prefer
	return r
}

func (r ApiCompositionCreateRequest) Execute() (*Composition, *http.Response, error) {
	return r.ApiService.CompositionCreateExecute(r)
}

/*
CompositionCreate Create COMPOSITION

Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiCompositionCreateRequest
*/
func (a *COMPOSITIONApiService) CompositionCreate(ctx context.Context, ehrId string) ApiCompositionCreateRequest {
	return ApiCompositionCreateRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Composition
func (a *COMPOSITIONApiService) CompositionCreateExecute(r ApiCompositionCreateRequest) (*Composition, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Composition
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.CompositionCreate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/composition"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.composition == nil {
		return localVarReturnValue, nil, reportError("composition is required and must be specified")
	}

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
	localVarPostBody = r.composition
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
		if localVarHTTPResponse.StatusCode == 400 {
			var v Error
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
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

type ApiCompositionDeleteRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	uidBasedId string
}

func (r ApiCompositionDeleteRequest) Execute() (*http.Response, error) {
	return r.ApiService.CompositionDeleteExecute(r)
}

/*
CompositionDelete Delete COMPOSITION

Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param uidBasedId An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`). 
 @return ApiCompositionDeleteRequest
*/
func (a *COMPOSITIONApiService) CompositionDelete(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionDeleteRequest {
	return ApiCompositionDeleteRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		uidBasedId: uidBasedId,
	}
}

// Execute executes the request
func (a *COMPOSITIONApiService) CompositionDeleteExecute(r ApiCompositionDeleteRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodDelete
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.CompositionDelete")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/composition/{uid_based_id}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"uid_based_id"+"}", url.PathEscape(parameterToString(r.uidBasedId, "")), -1)

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
	localVarHTTPHeaderAccepts := []string{}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}

type ApiCompositionGetRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	uidBasedId string
	versionAtTime *string
}

// A given time in the extended ISO 8601 format. 
func (r ApiCompositionGetRequest) VersionAtTime(versionAtTime string) ApiCompositionGetRequest {
	r.versionAtTime = &versionAtTime
	return r
}

func (r ApiCompositionGetRequest) Execute() (*Composition, *http.Response, error) {
	return r.ApiService.CompositionGetExecute(r)
}

/*
CompositionGet Get COMPOSITION

Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).
The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).

When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.

See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param uidBasedId An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
 @return ApiCompositionGetRequest
*/
func (a *COMPOSITIONApiService) CompositionGet(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionGetRequest {
	return ApiCompositionGetRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		uidBasedId: uidBasedId,
	}
}

// Execute executes the request
//  @return Composition
func (a *COMPOSITIONApiService) CompositionGetExecute(r ApiCompositionGetRequest) (*Composition, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Composition
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.CompositionGet")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/composition/{uid_based_id}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"uid_based_id"+"}", url.PathEscape(parameterToString(r.uidBasedId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.versionAtTime != nil {
		localVarQueryParams.Add("version_at_time", parameterToString(*r.versionAtTime, ""))
	}
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

type ApiCompositionUpdateRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	uidBasedId string
	ifMatch *string
	composition *Composition
	prefer *string
}

// Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. 
func (r ApiCompositionUpdateRequest) IfMatch(ifMatch string) ApiCompositionUpdateRequest {
	r.ifMatch = &ifMatch
	return r
}

// The new COMPOSITION. 
func (r ApiCompositionUpdateRequest) Composition(composition Composition) ApiCompositionUpdateRequest {
	r.composition = &composition
	return r
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiCompositionUpdateRequest) Prefer(prefer string) ApiCompositionUpdateRequest {
	r.prefer = &prefer
	return r
}

func (r ApiCompositionUpdateRequest) Execute() (*Composition, *http.Response, error) {
	return r.ApiService.CompositionUpdateExecute(r)
}

/*
CompositionUpdate Update COMPOSITION

Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.

The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).

If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL. 

The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param uidBasedId An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). 
 @return ApiCompositionUpdateRequest
*/
func (a *COMPOSITIONApiService) CompositionUpdate(ctx context.Context, ehrId string, uidBasedId string) ApiCompositionUpdateRequest {
	return ApiCompositionUpdateRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		uidBasedId: uidBasedId,
	}
}

// Execute executes the request
//  @return Composition
func (a *COMPOSITIONApiService) CompositionUpdateExecute(r ApiCompositionUpdateRequest) (*Composition, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPut
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Composition
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.CompositionUpdate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/composition/{uid_based_id}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"uid_based_id"+"}", url.PathEscape(parameterToString(r.uidBasedId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.ifMatch == nil {
		return localVarReturnValue, nil, reportError("ifMatch is required and must be specified")
	}
	if r.composition == nil {
		return localVarReturnValue, nil, reportError("composition is required and must be specified")
	}

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
	localVarHeaderParams["If-Match"] = parameterToString(*r.ifMatch, "")
	if r.prefer != nil {
		localVarHeaderParams["Prefer"] = parameterToString(*r.prefer, "")
	}
	// body params
	localVarPostBody = r.composition
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
		if localVarHTTPResponse.StatusCode == 400 {
			var v Error
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
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

type ApiVersionedCompositionGetRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	versionedObjectUid string
}

func (r ApiVersionedCompositionGetRequest) Execute() (*VersionedComposition, *http.Response, error) {
	return r.ApiService.VersionedCompositionGetExecute(r)
}

/*
VersionedCompositionGet Get versioned COMPOSITION

Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
 @return ApiVersionedCompositionGetRequest
*/
func (a *COMPOSITIONApiService) VersionedCompositionGet(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionGetRequest {
	return ApiVersionedCompositionGetRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		versionedObjectUid: versionedObjectUid,
	}
}

// Execute executes the request
//  @return VersionedComposition
func (a *COMPOSITIONApiService) VersionedCompositionGetExecute(r ApiVersionedCompositionGetRequest) (*VersionedComposition, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *VersionedComposition
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.VersionedCompositionGet")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"versioned_object_uid"+"}", url.PathEscape(parameterToString(r.versionedObjectUid, "")), -1)

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

type ApiVersionedCompositionRevisionHistoryRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	versionedObjectUid string
}

func (r ApiVersionedCompositionRevisionHistoryRequest) Execute() (*RevisionHistory, *http.Response, error) {
	return r.ApiService.VersionedCompositionRevisionHistoryExecute(r)
}

/*
VersionedCompositionRevisionHistory Get versioned COMPOSITION revision history

Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
 @return ApiVersionedCompositionRevisionHistoryRequest
*/
func (a *COMPOSITIONApiService) VersionedCompositionRevisionHistory(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionRevisionHistoryRequest {
	return ApiVersionedCompositionRevisionHistoryRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		versionedObjectUid: versionedObjectUid,
	}
}

// Execute executes the request
//  @return RevisionHistory
func (a *COMPOSITIONApiService) VersionedCompositionRevisionHistoryExecute(r ApiVersionedCompositionRevisionHistoryRequest) (*RevisionHistory, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *RevisionHistory
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.VersionedCompositionRevisionHistory")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"versioned_object_uid"+"}", url.PathEscape(parameterToString(r.versionedObjectUid, "")), -1)

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

type ApiVersionedCompositionVersionGetAtTimeRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	versionedObjectUid string
	versionAtTime *string
}

// A given time in the extended ISO 8601 format. 
func (r ApiVersionedCompositionVersionGetAtTimeRequest) VersionAtTime(versionAtTime string) ApiVersionedCompositionVersionGetAtTimeRequest {
	r.versionAtTime = &versionAtTime
	return r
}

func (r ApiVersionedCompositionVersionGetAtTimeRequest) Execute() (*Version, *http.Response, error) {
	return r.ApiService.VersionedCompositionVersionGetAtTimeExecute(r)
}

/*
VersionedCompositionVersionGetAtTime Get versioned COMPOSITION version at time

Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.

If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
 @return ApiVersionedCompositionVersionGetAtTimeRequest
*/
func (a *COMPOSITIONApiService) VersionedCompositionVersionGetAtTime(ctx context.Context, ehrId string, versionedObjectUid string) ApiVersionedCompositionVersionGetAtTimeRequest {
	return ApiVersionedCompositionVersionGetAtTimeRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		versionedObjectUid: versionedObjectUid,
	}
}

// Execute executes the request
//  @return Version
func (a *COMPOSITIONApiService) VersionedCompositionVersionGetAtTimeExecute(r ApiVersionedCompositionVersionGetAtTimeRequest) (*Version, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Version
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.VersionedCompositionVersionGetAtTime")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"versioned_object_uid"+"}", url.PathEscape(parameterToString(r.versionedObjectUid, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.versionAtTime != nil {
		localVarQueryParams.Add("version_at_time", parameterToString(*r.versionAtTime, ""))
	}
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

type ApiVersionedCompositionVersionGetByIdRequest struct {
	ctx context.Context
	ApiService COMPOSITIONApi
	ehrId string
	versionedObjectUid string
	versionUid string
}

func (r ApiVersionedCompositionVersionGetByIdRequest) Execute() (*Version, *http.Response, error) {
	return r.ApiService.VersionedCompositionVersionGetByIdExecute(r)
}

/*
VersionedCompositionVersionGetById Get versioned COMPOSITION version by id

Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param versionedObjectUid VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value. 
 @param versionUid VERSION identifier taken from VERSION.uid.value. 
 @return ApiVersionedCompositionVersionGetByIdRequest
*/
func (a *COMPOSITIONApiService) VersionedCompositionVersionGetById(ctx context.Context, ehrId string, versionedObjectUid string, versionUid string) ApiVersionedCompositionVersionGetByIdRequest {
	return ApiVersionedCompositionVersionGetByIdRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		versionedObjectUid: versionedObjectUid,
		versionUid: versionUid,
	}
}

// Execute executes the request
//  @return Version
func (a *COMPOSITIONApiService) VersionedCompositionVersionGetByIdExecute(r ApiVersionedCompositionVersionGetByIdRequest) (*Version, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Version
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "COMPOSITIONApiService.VersionedCompositionVersionGetById")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"versioned_object_uid"+"}", url.PathEscape(parameterToString(r.versionedObjectUid, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"version_uid"+"}", url.PathEscape(parameterToString(r.versionUid, "")), -1)

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
