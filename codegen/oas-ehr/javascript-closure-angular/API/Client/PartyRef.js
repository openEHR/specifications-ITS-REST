goog.provide('API.Client.PartyRef');

/**
 * Identifier for parties in a demographic or identity service.
 * @record
 */
API.Client.PartyRef = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PartyRef.prototype.namespace;

/**
 * @type {!string}
 * @export
 */
API.Client.PartyRef.prototype.type;

/**
 * @type {!API.Client.ObjectId}
 * @export
 */
API.Client.PartyRef.prototype.id;

