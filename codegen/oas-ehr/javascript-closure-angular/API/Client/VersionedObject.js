goog.provide('API.Client.VersionedObject');

/**
 * @record
 */
API.Client.VersionedObject = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.VersionedObject.prototype.type;

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.VersionedObject.prototype.uid;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.VersionedObject.prototype.ownerId;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.VersionedObject.prototype.timeCreated;

