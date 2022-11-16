goog.provide('API.Client.Element');

/**
 * @record
 */
API.Client.Element = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Element.prototype.type;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.Element.prototype.nullFlavour;

/**
 * @type {!API.Client.DataValue}
 * @export
 */
API.Client.Element.prototype.value;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Element.prototype.nullReason;

