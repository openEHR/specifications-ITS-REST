goog.provide('API.Client.Activity');

/**
 * @record
 */
API.Client.Activity = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Activity.prototype.type;

/**
 * @type {!API.Client.DvParsable}
 * @export
 */
API.Client.Activity.prototype.timing;

/**
 * @type {!string}
 * @export
 */
API.Client.Activity.prototype.actionArchetypeId;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.Activity.prototype.description;

