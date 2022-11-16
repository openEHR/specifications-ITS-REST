goog.provide('API.Client.Participation');

/**
 * @record
 */
API.Client.Participation = function() {}

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Participation.prototype.function;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.Participation.prototype.mode;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.Participation.prototype.performer;

/**
 * @type {!API.Client.DvIntervalOfDateTime}
 * @export
 */
API.Client.Participation.prototype.time;

