goog.provide('API.Client.Event');

/**
 * @record
 */
API.Client.Event = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Event.prototype.type;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.Event.prototype.time;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.Event.prototype.state;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.Event.prototype.data;

