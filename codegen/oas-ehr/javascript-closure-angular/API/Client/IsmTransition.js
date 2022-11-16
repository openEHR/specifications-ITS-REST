goog.provide('API.Client.IsmTransition');

/**
 * @record
 */
API.Client.IsmTransition = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.IsmTransition.prototype.type;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.IsmTransition.prototype.currentState;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.IsmTransition.prototype.transition;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.IsmTransition.prototype.careflowStep;

/**
 * @type {!Array<!API.Client.DvText>}
 * @export
 */
API.Client.IsmTransition.prototype.reason;

