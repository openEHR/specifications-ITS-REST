goog.provide('API.Client.DvText');

/**
 * @record
 */
API.Client.DvText = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvText.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.DvText.prototype.value;

/**
 * @type {!API.Client.DvUri}
 * @export
 */
API.Client.DvText.prototype.hyperlink;

/**
 * @type {!string}
 * @export
 */
API.Client.DvText.prototype.formatting;

/**
 * @type {!Array<!API.Client.TermMapping>}
 * @export
 */
API.Client.DvText.prototype.mappings;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvText.prototype.language;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvText.prototype.encoding;

