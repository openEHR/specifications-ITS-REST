goog.provide('API.Client.Link');

/**
 * @record
 */
API.Client.Link = function() {}

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Link.prototype.meaning;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Link.prototype.type;

/**
 * @type {!API.Client.DvEhrUri}
 * @export
 */
API.Client.Link.prototype.target;

