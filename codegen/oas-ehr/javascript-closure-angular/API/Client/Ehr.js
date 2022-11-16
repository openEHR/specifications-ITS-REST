goog.provide('API.Client.Ehr');

/**
 * An EHR resource
 * @record
 */
API.Client.Ehr = function() {}

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.Ehr.prototype.systemId;

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.Ehr.prototype.ehrId;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.Ehr.prototype.ehrStatus;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.Ehr.prototype.ehrAccess;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.Ehr.prototype.timeCreated;

