goog.provide('API.Client.CareEntry');

/**
 * @record
 */
API.Client.CareEntry = function() {}

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.CareEntry.prototype.protocol;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.CareEntry.prototype.guidelineId;

/**
 * @type {!string}
 * @export
 */
API.Client.CareEntry.prototype.type;

