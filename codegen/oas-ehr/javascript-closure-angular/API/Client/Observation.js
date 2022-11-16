goog.provide('API.Client.Observation');

/**
 * @record
 */
API.Client.Observation = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Observation.prototype.type;

/**
 * @type {!API.Client.History}
 * @export
 */
API.Client.Observation.prototype.data;

/**
 * @type {!API.Client.History}
 * @export
 */
API.Client.Observation.prototype.state;

