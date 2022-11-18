goog.provide('API.Client.TermMapping');

/**
 * @record
 */
API.Client.TermMapping = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.TermMapping.prototype.match;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.TermMapping.prototype.purpose;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.TermMapping.prototype.target;

