//
// COMPOSITIONAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class COMPOSITIONAPI {

    /**
     * enum for parameter prefer
     */
    public enum Prefer_compositionCreate: String, CaseIterable {
        case representation = "return=representation"
        case minimal = "return=minimal"
    }

    /**
     Create COMPOSITION
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter composition: (body) The COMPOSITION.  
     - parameter prefer: (header) Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  (optional, default to .returnEqualMinimal)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func compositionCreate(ehrId: String, composition: Composition, prefer: Prefer_compositionCreate? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Composition?, _ error: Error?) -> Void)) -> RequestTask {
        return compositionCreateWithRequestBuilder(ehrId: ehrId, composition: composition, prefer: prefer).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create COMPOSITION
     - POST /ehr/{ehr_id}/composition
     - Creates the first version of a new COMPOSITION in the EHR identified by `ehr_id`. 
     - responseHeaders: [ETag(String), Location(String)]
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter composition: (body) The COMPOSITION.  
     - parameter prefer: (header) Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  (optional, default to .returnEqualMinimal)
     - returns: RequestBuilder<Composition> 
     */
    open class func compositionCreateWithRequestBuilder(ehrId: String, composition: Composition, prefer: Prefer_compositionCreate? = nil) -> RequestBuilder<Composition> {
        var localVariablePath = "/ehr/{ehr_id}/composition"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: composition)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Prefer": prefer?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Composition>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Delete COMPOSITION
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func compositionDelete(ehrId: String, uidBasedId: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return compositionDeleteWithRequestBuilder(ehrId: ehrId, uidBasedId: uidBasedId).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete COMPOSITION
     - DELETE /ehr/{ehr_id}/composition/{uid_based_id}
     - Deletes the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` MUST be in a form of an OBJECT_VERSION_ID identifier taken from the last (most recent) VERSION.uid.value, representing the `preceding_version_uid` to be deleted. 
     - responseHeaders: [ETag(String), Location(String)]
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An identifier in a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;).  
     - returns: RequestBuilder<Void> 
     */
    open class func compositionDeleteWithRequestBuilder(ehrId: String, uidBasedId: String) -> RequestBuilder<Void> {
        var localVariablePath = "/ehr/{ehr_id}/composition/{uid_based_id}"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let uidBasedIdPreEscape = "\(APIHelper.mapValueToPathItem(uidBasedId))"
        let uidBasedIdPostEscape = uidBasedIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{uid_based_id}", with: uidBasedIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get COMPOSITION
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  
     - parameter versionAtTime: (query) A given time in the extended ISO 8601 format.  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func compositionGet(ehrId: String, uidBasedId: String, versionAtTime: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Composition?, _ error: Error?) -> Void)) -> RequestTask {
        return compositionGetWithRequestBuilder(ehrId: ehrId, uidBasedId: uidBasedId, versionAtTime: versionAtTime).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get COMPOSITION
     - GET /ehr/{ehr_id}/composition/{uid_based_id}
     - Retrieves a version of the COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a `version_uid`), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`). The former is used to retrieve a specific known version of the COMPOSITION (e.g. one identified by `8849182c-82ad-4088-a07f-48ead4180515::openEHRSys.example.com::1`), whereas the later (e.g. an identifier like `8849182c-82ad-4088-a07f-48ead4180515`) is be used to retrieve a version from the version container whenever the _version_tree_id_ is unknown or irrelevant (such as when most recent version is requested).  When the `uid_based_id` has the form of a HIER_OBJECT_ID, if the `version_at_time` is supplied, retrieves the version extant _at specified time_, otherwise retrieves the _latest_ COMPOSITION version.  See [Resource identification](overview.html#tag/Resources/Resource-identification) for more details about the identifiers usage and meaning. 
     - responseHeaders: [ETag(String), Location(String)]
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An abstract identifier: it can take a form of an OBJECT_VERSION_ID identifier taken from VERSION.uid.value (i.e. a &#x60;version_uid&#x60;), or a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  
     - parameter versionAtTime: (query) A given time in the extended ISO 8601 format.  (optional)
     - returns: RequestBuilder<Composition?> 
     */
    open class func compositionGetWithRequestBuilder(ehrId: String, uidBasedId: String, versionAtTime: String? = nil) -> RequestBuilder<Composition?> {
        var localVariablePath = "/ehr/{ehr_id}/composition/{uid_based_id}"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let uidBasedIdPreEscape = "\(APIHelper.mapValueToPathItem(uidBasedId))"
        let uidBasedIdPostEscape = uidBasedIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{uid_based_id}", with: uidBasedIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version_at_time": (wrappedValue: versionAtTime?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Composition?>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     * enum for parameter prefer
     */
    public enum Prefer_compositionUpdate: String, CaseIterable {
        case representation = "return=representation"
        case minimal = "return=minimal"
    }

    /**
     Update COMPOSITION
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  
     - parameter ifMatch: (header) Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  
     - parameter composition: (body) The new COMPOSITION.  
     - parameter prefer: (header) Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  (optional, default to .returnEqualMinimal)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func compositionUpdate(ehrId: String, uidBasedId: String, ifMatch: String, composition: Composition, prefer: Prefer_compositionUpdate? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Composition?, _ error: Error?) -> Void)) -> RequestTask {
        return compositionUpdateWithRequestBuilder(ehrId: ehrId, uidBasedId: uidBasedId, ifMatch: ifMatch, composition: composition, prefer: prefer).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update COMPOSITION
     - PUT /ehr/{ehr_id}/composition/{uid_based_id}
     - Updates COMPOSITION identified by `uid_based_id` and associated with the EHR identified by `ehr_id`.  The `uid_based_id` can take only a form of an HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a `versioned_object_uid`).  If the request body already contains a COMPOSITION.uid.value, it must match the `uid_based_id` in the URL.   The existing latest `version_uid` of COMPOSITION resource (i.e. the `preceding_version_uid`) must be specified in the `If-Match` header. 
     - responseHeaders: [ETag(String), Location(String)]
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter uidBasedId: (path) An identifier in a form of a HIER_OBJECT_ID identifier taken from VERSIONED_OBJECT.uid.value (i.e. a &#x60;versioned_object_uid&#x60;).  
     - parameter ifMatch: (header) Header to make the request conditional.  Together with &#x60;ETag&#x60; request tag, it helps to prevent simultaneous updates of a resource from overwriting each other (\&quot;mid-air collisions\&quot;). The format is always an &#x60;version_uid&#x60; identifier enclosed by double quotes. The operation will be performed only if the existing latest &#x60;version_uid&#x60; of the resource (i.e. the &#x60;preceding_version_uid&#x60;) matches this header&#39;s value.  
     - parameter composition: (body) The new COMPOSITION.  
     - parameter prefer: (header) Request header to indicate the preference over response details. The response will contain the entire resource when the &#x60;Prefer&#x60; header has a value of &#x60;return&#x3D;representation&#x60;.  (optional, default to .returnEqualMinimal)
     - returns: RequestBuilder<Composition> 
     */
    open class func compositionUpdateWithRequestBuilder(ehrId: String, uidBasedId: String, ifMatch: String, composition: Composition, prefer: Prefer_compositionUpdate? = nil) -> RequestBuilder<Composition> {
        var localVariablePath = "/ehr/{ehr_id}/composition/{uid_based_id}"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let uidBasedIdPreEscape = "\(APIHelper.mapValueToPathItem(uidBasedId))"
        let uidBasedIdPostEscape = uidBasedIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{uid_based_id}", with: uidBasedIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: composition)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "If-Match": ifMatch.encodeToJSON(),
            "Prefer": prefer?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Composition>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get versioned COMPOSITION
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionedCompositionGet(ehrId: String, versionedObjectUid: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: VersionedComposition?, _ error: Error?) -> Void)) -> RequestTask {
        return versionedCompositionGetWithRequestBuilder(ehrId: ehrId, versionedObjectUid: versionedObjectUid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get versioned COMPOSITION
     - GET /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}
     - Retrieves a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - returns: RequestBuilder<VersionedComposition> 
     */
    open class func versionedCompositionGetWithRequestBuilder(ehrId: String, versionedObjectUid: String) -> RequestBuilder<VersionedComposition> {
        var localVariablePath = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let versionedObjectUidPreEscape = "\(APIHelper.mapValueToPathItem(versionedObjectUid))"
        let versionedObjectUidPostEscape = versionedObjectUidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versioned_object_uid}", with: versionedObjectUidPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<VersionedComposition>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get versioned COMPOSITION revision history
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionedCompositionRevisionHistory(ehrId: String, versionedObjectUid: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: RevisionHistory?, _ error: Error?) -> Void)) -> RequestTask {
        return versionedCompositionRevisionHistoryWithRequestBuilder(ehrId: ehrId, versionedObjectUid: versionedObjectUid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get versioned COMPOSITION revision history
     - GET /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history
     - Retrieves revision history of the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - returns: RequestBuilder<RevisionHistory> 
     */
    open class func versionedCompositionRevisionHistoryWithRequestBuilder(ehrId: String, versionedObjectUid: String) -> RequestBuilder<RevisionHistory> {
        var localVariablePath = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/revision_history"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let versionedObjectUidPreEscape = "\(APIHelper.mapValueToPathItem(versionedObjectUid))"
        let versionedObjectUidPostEscape = versionedObjectUidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versioned_object_uid}", with: versionedObjectUidPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RevisionHistory>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get versioned COMPOSITION version at time
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter versionAtTime: (query) A given time in the extended ISO 8601 format.  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionedCompositionVersionGetAtTime(ehrId: String, versionedObjectUid: String, versionAtTime: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Version?, _ error: Error?) -> Void)) -> RequestTask {
        return versionedCompositionVersionGetAtTimeWithRequestBuilder(ehrId: ehrId, versionedObjectUid: versionedObjectUid, versionAtTime: versionAtTime).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get versioned COMPOSITION version at time
     - GET /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version
     - Retrieves a VERSION from the VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`.  If `version_at_time` is supplied, retrieves the VERSION extant _at specified time_, otherwise retrieves the _latest_ VERSION. 
     - responseHeaders: [ETag(String), Location(String)]
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter versionAtTime: (query) A given time in the extended ISO 8601 format.  (optional)
     - returns: RequestBuilder<Version> 
     */
    open class func versionedCompositionVersionGetAtTimeWithRequestBuilder(ehrId: String, versionedObjectUid: String, versionAtTime: String? = nil) -> RequestBuilder<Version> {
        var localVariablePath = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let versionedObjectUidPreEscape = "\(APIHelper.mapValueToPathItem(versionedObjectUid))"
        let versionedObjectUidPostEscape = versionedObjectUidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versioned_object_uid}", with: versionedObjectUidPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version_at_time": (wrappedValue: versionAtTime?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Version>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Get versioned COMPOSITION version by id
     
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter versionUid: (path) VERSION identifier taken from VERSION.uid.value.  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func versionedCompositionVersionGetById(ehrId: String, versionedObjectUid: String, versionUid: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Version?, _ error: Error?) -> Void)) -> RequestTask {
        return versionedCompositionVersionGetByIdWithRequestBuilder(ehrId: ehrId, versionedObjectUid: versionedObjectUid, versionUid: versionUid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get versioned COMPOSITION version by id
     - GET /ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}
     - Retrieves a VERSION identified by `version_uid` of a VERSIONED_COMPOSITION identified by `versioned_object_uid` and associated with the EHR identified by `ehr_id`. 
     - parameter ehrId: (path) EHR identifier taken from EHR.ehr_id.value.  
     - parameter versionedObjectUid: (path) VERSIONED_COMPOSITION identifier taken from VERSIONED_COMPOSITION.uid.value.  
     - parameter versionUid: (path) VERSION identifier taken from VERSION.uid.value.  
     - returns: RequestBuilder<Version> 
     */
    open class func versionedCompositionVersionGetByIdWithRequestBuilder(ehrId: String, versionedObjectUid: String, versionUid: String) -> RequestBuilder<Version> {
        var localVariablePath = "/ehr/{ehr_id}/versioned_composition/{versioned_object_uid}/version/{version_uid}"
        let ehrIdPreEscape = "\(APIHelper.mapValueToPathItem(ehrId))"
        let ehrIdPostEscape = ehrIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{ehr_id}", with: ehrIdPostEscape, options: .literal, range: nil)
        let versionedObjectUidPreEscape = "\(APIHelper.mapValueToPathItem(versionedObjectUid))"
        let versionedObjectUidPostEscape = versionedObjectUidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versioned_object_uid}", with: versionedObjectUidPostEscape, options: .literal, range: nil)
        let versionUidPreEscape = "\(APIHelper.mapValueToPathItem(versionUid))"
        let versionUidPostEscape = versionUidPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{version_uid}", with: versionUidPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Version>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}