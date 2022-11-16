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


type DIRECTORYApi interface {

	/*
	DirectoryCreate Create directory

	Creates a new directory FOLDER associated with the EHR identified by `ehr_id`.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiDirectoryCreateRequest
	*/
	DirectoryCreate(ctx context.Context, ehrId string) ApiDirectoryCreateRequest

	// DirectoryCreateExecute executes the request
	//  @return Folder
	DirectoryCreateExecute(r ApiDirectoryCreateRequest) (*Folder, *http.Response, error)

	/*
	DirectoryDelete Delete directory

	Deletes directory FOLDER associated with the EHR identified by `ehr_id`.

The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiDirectoryDeleteRequest
	*/
	DirectoryDelete(ctx context.Context, ehrId string) ApiDirectoryDeleteRequest

	// DirectoryDeleteExecute executes the request
	DirectoryDeleteExecute(r ApiDirectoryDeleteRequest) (*http.Response, error)

	/*
	DirectoryGetAtTime Get folder in directory version at time

	Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`. 
If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version. 

If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiDirectoryGetAtTimeRequest
	*/
	DirectoryGetAtTime(ctx context.Context, ehrId string) ApiDirectoryGetAtTimeRequest

	// DirectoryGetAtTimeExecute executes the request
	//  @return Folder
	DirectoryGetAtTimeExecute(r ApiDirectoryGetAtTimeRequest) (*Folder, *http.Response, error)

	/*
	DirectoryGetByVersionId Get folder in directory version

	Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.

If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@param versionUid VERSION identifier taken from VERSION.uid.value. 
	@return ApiDirectoryGetByVersionIdRequest
	*/
	DirectoryGetByVersionId(ctx context.Context, ehrId string, versionUid string) ApiDirectoryGetByVersionIdRequest

	// DirectoryGetByVersionIdExecute executes the request
	//  @return Folder
	DirectoryGetByVersionIdExecute(r ApiDirectoryGetByVersionIdRequest) (*Folder, *http.Response, error)

	/*
	DirectoryUpdate Update directory

	Updates directory FOLDER associated with the EHR identified by `ehr_id`.

The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


	@param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
	@param ehrId EHR identifier taken from EHR.ehr_id.value. 
	@return ApiDirectoryUpdateRequest
	*/
	DirectoryUpdate(ctx context.Context, ehrId string) ApiDirectoryUpdateRequest

	// DirectoryUpdateExecute executes the request
	//  @return Folder
	DirectoryUpdateExecute(r ApiDirectoryUpdateRequest) (*Folder, *http.Response, error)
}

// DIRECTORYApiService DIRECTORYApi service
type DIRECTORYApiService service

type ApiDirectoryCreateRequest struct {
	ctx context.Context
	ApiService DIRECTORYApi
	ehrId string
	folder *Folder
	prefer *string
}

// The directory. 
func (r ApiDirectoryCreateRequest) Folder(folder Folder) ApiDirectoryCreateRequest {
	r.folder = &folder
	return r
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiDirectoryCreateRequest) Prefer(prefer string) ApiDirectoryCreateRequest {
	r.prefer = &prefer
	return r
}

func (r ApiDirectoryCreateRequest) Execute() (*Folder, *http.Response, error) {
	return r.ApiService.DirectoryCreateExecute(r)
}

/*
DirectoryCreate Create directory

Creates a new directory FOLDER associated with the EHR identified by `ehr_id`.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiDirectoryCreateRequest
*/
func (a *DIRECTORYApiService) DirectoryCreate(ctx context.Context, ehrId string) ApiDirectoryCreateRequest {
	return ApiDirectoryCreateRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Folder
func (a *DIRECTORYApiService) DirectoryCreateExecute(r ApiDirectoryCreateRequest) (*Folder, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Folder
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DIRECTORYApiService.DirectoryCreate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/directory"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.folder == nil {
		return localVarReturnValue, nil, reportError("folder is required and must be specified")
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
	localVarPostBody = r.folder
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

type ApiDirectoryDeleteRequest struct {
	ctx context.Context
	ApiService DIRECTORYApi
	ehrId string
	ifMatch *string
}

// Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. 
func (r ApiDirectoryDeleteRequest) IfMatch(ifMatch string) ApiDirectoryDeleteRequest {
	r.ifMatch = &ifMatch
	return r
}

func (r ApiDirectoryDeleteRequest) Execute() (*http.Response, error) {
	return r.ApiService.DirectoryDeleteExecute(r)
}

/*
DirectoryDelete Delete directory

Deletes directory FOLDER associated with the EHR identified by `ehr_id`.

The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiDirectoryDeleteRequest
*/
func (a *DIRECTORYApiService) DirectoryDelete(ctx context.Context, ehrId string) ApiDirectoryDeleteRequest {
	return ApiDirectoryDeleteRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
func (a *DIRECTORYApiService) DirectoryDeleteExecute(r ApiDirectoryDeleteRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodDelete
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DIRECTORYApiService.DirectoryDelete")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/directory"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.ifMatch == nil {
		return nil, reportError("ifMatch is required and must be specified")
	}

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
	localVarHeaderParams["If-Match"] = parameterToString(*r.ifMatch, "")
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

type ApiDirectoryGetAtTimeRequest struct {
	ctx context.Context
	ApiService DIRECTORYApi
	ehrId string
	versionAtTime *string
	path *string
}

// A given time in the extended ISO 8601 format. 
func (r ApiDirectoryGetAtTimeRequest) VersionAtTime(versionAtTime string) ApiDirectoryGetAtTimeRequest {
	r.versionAtTime = &versionAtTime
	return r
}

// A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
func (r ApiDirectoryGetAtTimeRequest) Path(path string) ApiDirectoryGetAtTimeRequest {
	r.path = &path
	return r
}

func (r ApiDirectoryGetAtTimeRequest) Execute() (*Folder, *http.Response, error) {
	return r.ApiService.DirectoryGetAtTimeExecute(r)
}

/*
DirectoryGetAtTime Get folder in directory version at time

Retrieves the version of the directory FOLDER associated with the EHR identified by `ehr_id`. 
If `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ directory FOLDER version. 

If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiDirectoryGetAtTimeRequest
*/
func (a *DIRECTORYApiService) DirectoryGetAtTime(ctx context.Context, ehrId string) ApiDirectoryGetAtTimeRequest {
	return ApiDirectoryGetAtTimeRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Folder
func (a *DIRECTORYApiService) DirectoryGetAtTimeExecute(r ApiDirectoryGetAtTimeRequest) (*Folder, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Folder
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DIRECTORYApiService.DirectoryGetAtTime")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/directory"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.versionAtTime != nil {
		localVarQueryParams.Add("version_at_time", parameterToString(*r.versionAtTime, ""))
	}
	if r.path != nil {
		localVarQueryParams.Add("path", parameterToString(*r.path, ""))
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

type ApiDirectoryGetByVersionIdRequest struct {
	ctx context.Context
	ApiService DIRECTORYApi
	ehrId string
	versionUid string
	path *string
}

// A path to a sub-folder; consists of slash-separated values of the name attribute of FOLDERs in the directory. 
func (r ApiDirectoryGetByVersionIdRequest) Path(path string) ApiDirectoryGetByVersionIdRequest {
	r.path = &path
	return r
}

func (r ApiDirectoryGetByVersionIdRequest) Execute() (*Folder, *http.Response, error) {
	return r.ApiService.DirectoryGetByVersionIdExecute(r)
}

/*
DirectoryGetByVersionId Get folder in directory version

Retrieves a particular version of the directory FOLDER identified by `version_uid` and associated with the EHR identified by `ehr_id`.

If `path` is supplied, retrieves from the directory only the sub-FOLDER that is associated with that path.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @param versionUid VERSION identifier taken from VERSION.uid.value. 
 @return ApiDirectoryGetByVersionIdRequest
*/
func (a *DIRECTORYApiService) DirectoryGetByVersionId(ctx context.Context, ehrId string, versionUid string) ApiDirectoryGetByVersionIdRequest {
	return ApiDirectoryGetByVersionIdRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
		versionUid: versionUid,
	}
}

// Execute executes the request
//  @return Folder
func (a *DIRECTORYApiService) DirectoryGetByVersionIdExecute(r ApiDirectoryGetByVersionIdRequest) (*Folder, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Folder
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DIRECTORYApiService.DirectoryGetByVersionId")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/directory/{version_uid}"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"version_uid"+"}", url.PathEscape(parameterToString(r.versionUid, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	if r.path != nil {
		localVarQueryParams.Add("path", parameterToString(*r.path, ""))
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

type ApiDirectoryUpdateRequest struct {
	ctx context.Context
	ApiService DIRECTORYApi
	ehrId string
	ifMatch *string
	folder *Folder
	prefer *string
}

// Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value. 
func (r ApiDirectoryUpdateRequest) IfMatch(ifMatch string) ApiDirectoryUpdateRequest {
	r.ifMatch = &ifMatch
	return r
}

// The new directory. 
func (r ApiDirectoryUpdateRequest) Folder(folder Folder) ApiDirectoryUpdateRequest {
	r.folder = &folder
	return r
}

// Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;. 
func (r ApiDirectoryUpdateRequest) Prefer(prefer string) ApiDirectoryUpdateRequest {
	r.prefer = &prefer
	return r
}

func (r ApiDirectoryUpdateRequest) Execute() (*Folder, *http.Response, error) {
	return r.ApiService.DirectoryUpdateExecute(r)
}

/*
DirectoryUpdate Update directory

Updates directory FOLDER associated with the EHR identified by `ehr_id`.

The existing latest `version_uid` of directory FOLDER resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param ehrId EHR identifier taken from EHR.ehr_id.value. 
 @return ApiDirectoryUpdateRequest
*/
func (a *DIRECTORYApiService) DirectoryUpdate(ctx context.Context, ehrId string) ApiDirectoryUpdateRequest {
	return ApiDirectoryUpdateRequest{
		ApiService: a,
		ctx: ctx,
		ehrId: ehrId,
	}
}

// Execute executes the request
//  @return Folder
func (a *DIRECTORYApiService) DirectoryUpdateExecute(r ApiDirectoryUpdateRequest) (*Folder, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPut
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *Folder
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "DIRECTORYApiService.DirectoryUpdate")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

	localVarPath := localBasePath + "/ehr/{ehr_id}/directory"
	localVarPath = strings.Replace(localVarPath, "{"+"ehr_id"+"}", url.PathEscape(parameterToString(r.ehrId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}
	if r.ifMatch == nil {
		return localVarReturnValue, nil, reportError("ifMatch is required and must be specified")
	}
	if r.folder == nil {
		return localVarReturnValue, nil, reportError("folder is required and must be specified")
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
	localVarPostBody = r.folder
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
