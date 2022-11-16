goog.provide('API.Client.Contribution');

/**
 * A CONTRIBUTION resource
 * @record
 */
API.Client.Contribution = function() {}

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.Contribution.prototype.uid;

/**
 * @type {!Array<!API.Client.ObjectRef>}
 * @export
 */
API.Client.Contribution.prototype.versions;

/**
 * @type {!API.Client.AuditDetails}
 * @export
 */
API.Client.Contribution.prototype.audit;

