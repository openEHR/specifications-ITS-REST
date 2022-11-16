goog.provide('API.Client.ObjectRef');

/**
 * @record
 */
API.Client.ObjectRef = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ObjectRef.prototype.namespace;

/**
 * @type {!string}
 * @export
 */
API.Client.ObjectRef.prototype.type;

/**
 * @type {!API.Client.ObjectId}
 * @export
 */
API.Client.ObjectRef.prototype.id;

