goog.provide('API.Client.Error');

/**
 * @record
 */
API.Client.Error = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Error.prototype.message;

/**
 * 
 * @type {!Array<!string>}
 * @export
 */
API.Client.Error.prototype.validationErrors;

