goog.provide('API.Client.VersionedEhrStatus');

/**
 * A VERSIONED_EHR_STATUS resource
 * @record
 */
API.Client.VersionedEhrStatus = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.VersionedEhrStatus.prototype.type;

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.VersionedEhrStatus.prototype.uid;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.VersionedEhrStatus.prototype.ownerId;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.VersionedEhrStatus.prototype.timeCreated;

