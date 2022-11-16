goog.provide('API.Client.VersionedComposition');

/**
 * A VERSIONED_COMPOSITION resource
 * @record
 */
API.Client.VersionedComposition = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.VersionedComposition.prototype.type;

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.VersionedComposition.prototype.uid;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.VersionedComposition.prototype.ownerId;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.VersionedComposition.prototype.timeCreated;

