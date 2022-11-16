goog.provide('API.Client.DvIdentifier');

/**
 * Type for representing identifiers of real-world entities. Typical identifiers include drivers licence number, social security number, veterans affairs number, prescription id, order id, and so on.  DV_IDENTIFIER is used to represent any identifier of a real thing, issued by some authority or agency. 
 * @record
 */
API.Client.DvIdentifier = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvIdentifier.prototype.issuer;

/**
 * @type {!string}
 * @export
 */
API.Client.DvIdentifier.prototype.assigner;

/**
 * @type {!string}
 * @export
 */
API.Client.DvIdentifier.prototype.id;

/**
 * @type {!string}
 * @export
 */
API.Client.DvIdentifier.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.DvIdentifier.prototype.type;

