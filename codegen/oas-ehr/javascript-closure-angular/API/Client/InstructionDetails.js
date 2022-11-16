goog.provide('API.Client.InstructionDetails');

/**
 * @record
 */
API.Client.InstructionDetails = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.InstructionDetails.prototype.type;

/**
 * @type {!API.Client.LocatableRef}
 * @export
 */
API.Client.InstructionDetails.prototype.instructionId;

/**
 * @type {!string}
 * @export
 */
API.Client.InstructionDetails.prototype.activityId;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.InstructionDetails.prototype.wfDetails;

