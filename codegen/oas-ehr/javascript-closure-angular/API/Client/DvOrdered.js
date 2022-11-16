goog.provide('API.Client.DvOrdered');

/**
 * @record
 */
API.Client.DvOrdered = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvOrdered.prototype.type;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvOrdered.prototype.normalStatus;

/**
 * @type {!API.Client.DvInterval}
 * @export
 */
API.Client.DvOrdered.prototype.normalRange;

/**
 * @type {!Array<!API.Client.ReferenceRange>}
 * @export
 */
API.Client.DvOrdered.prototype.otherReferenceRanges;

