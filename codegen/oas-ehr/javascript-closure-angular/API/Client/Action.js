goog.provide('API.Client.Action');

/**
 * @record
 */
API.Client.Action = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Action.prototype.type;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.Action.prototype.time;

/**
 * @type {!API.Client.IsmTransition}
 * @export
 */
API.Client.Action.prototype.ismTransition;

/**
 * @type {!API.Client.InstructionDetails}
 * @export
 */
API.Client.Action.prototype.instructionDetails;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.Action.prototype.description;

