goog.provide('API.Client.DvIntervalOfDateTime');

/**
 * @record
 */
API.Client.DvIntervalOfDateTime = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvIntervalOfDateTime.prototype.type;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.DvIntervalOfDateTime.prototype.lower;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.DvIntervalOfDateTime.prototype.upper;

