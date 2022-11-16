goog.provide('API.Client.PartyRelated');

/**
 * @record
 */
API.Client.PartyRelated = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.PartyRelated.prototype.type;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.PartyRelated.prototype.relationship;

/**
 * @type {!API.Client.PartyRef}
 * @export
 */
API.Client.PartyRelated.prototype.externalRef;

