goog.provide('API.Client.History');

/**
 * @record
 */
API.Client.History = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.History.prototype.type;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.History.prototype.origin;

/**
 * @type {!API.Client.DvDuration}
 * @export
 */
API.Client.History.prototype.period;

/**
 * @type {!API.Client.DvDuration}
 * @export
 */
API.Client.History.prototype.duration;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.History.prototype.summary;

/**
 * @type {!Array<!API.Client.Event>}
 * @export
 */
API.Client.History.prototype.events;

