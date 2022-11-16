goog.provide('API.Client.LocatableRef');

/**
 * @record
 */
API.Client.LocatableRef = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.LocatableRef.prototype.namespace;

/**
 * @type {!string}
 * @export
 */
API.Client.LocatableRef.prototype.type;

/**
 * @type {!API.Client.UidBasedId}
 * @export
 */
API.Client.LocatableRef.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.LocatableRef.prototype.path;

