goog.provide('API.Client.EventContext');

/**
 * @record
 */
API.Client.EventContext = function() {}

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.EventContext.prototype.startTime;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.EventContext.prototype.endTime;

/**
 * @type {!string}
 * @export
 */
API.Client.EventContext.prototype.location;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.EventContext.prototype.setting;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.EventContext.prototype.otherContext;

/**
 * @type {!API.Client.PartyIdentified}
 * @export
 */
API.Client.EventContext.prototype.healthCareFacility;

/**
 * @type {!Array<!API.Client.Participation>}
 * @export
 */
API.Client.EventContext.prototype.participations;

/**
 * @type {!string}
 * @export
 */
API.Client.EventContext.prototype.type;

