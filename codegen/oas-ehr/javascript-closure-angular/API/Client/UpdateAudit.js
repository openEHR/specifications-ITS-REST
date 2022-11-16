goog.provide('API.Client.UpdateAudit');

/**
 * The set of attributes required to document the committal of an information item to a repository. Used by the server to create an AUDIT_DETAILS object.
 * @record
 */
API.Client.UpdateAudit = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.UpdateAudit.prototype.type;

/**
 * @type {!API.Client.TerminologyCode}
 * @export
 */
API.Client.UpdateAudit.prototype.changeType;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.UpdateAudit.prototype.description;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.UpdateAudit.prototype.committer;

