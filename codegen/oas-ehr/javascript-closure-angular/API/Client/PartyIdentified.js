goog.provide('API.Client.PartyIdentified');

/**
 * @record
 */
API.Client.PartyIdentified = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PartyIdentified.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.PartyIdentified.prototype.name;

/**
 * @type {!Array<!API.Client.DvIdentifier>}
 * @export
 */
API.Client.PartyIdentified.prototype.identifiers;

/**
 * @type {!API.Client.PartyRef}
 * @export
 */
API.Client.PartyIdentified.prototype.externalRef;

