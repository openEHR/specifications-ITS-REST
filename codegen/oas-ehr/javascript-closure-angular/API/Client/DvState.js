goog.provide('API.Client.DvState');

/**
 * @record
 */
API.Client.DvState = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvState.prototype.type;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.DvState.prototype.value;

/**
 * @type {!boolean}
 * @export
 */
API.Client.DvState.prototype.isTerminal;

