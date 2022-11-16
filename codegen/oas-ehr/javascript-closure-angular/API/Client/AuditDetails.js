goog.provide('API.Client.AuditDetails');

/**
 * The set of attributes required to document the committal of an information item to a repository.
 * @record
 */
API.Client.AuditDetails = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.AuditDetails.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.AuditDetails.prototype.systemId;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.AuditDetails.prototype.timeCommitted;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.AuditDetails.prototype.changeType;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.AuditDetails.prototype.description;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.AuditDetails.prototype.committer;

