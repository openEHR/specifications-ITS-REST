goog.provide('API.Client.Instruction');

/**
 * @record
 */
API.Client.Instruction = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Instruction.prototype.type;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Instruction.prototype.narrative;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.Instruction.prototype.expiryTime;

/**
 * @type {!API.Client.DvParsable}
 * @export
 */
API.Client.Instruction.prototype.wfDefinition;

/**
 * @type {!Array<!API.Client.Activity>}
 * @export
 */
API.Client.Instruction.prototype.activities;

