goog.provide('API.Client.NewContribution');

/**
 * A new (un-committed) CONTRIBUTION resource
 * @record
 */
API.Client.NewContribution = function() {}

/**
 * @type {!API.Client.HierObjectId}
 * @export
 */
API.Client.NewContribution.prototype.uid;

/**
 * @type {!Array<!API.Client.UpdateVersion>}
 * @export
 */
API.Client.NewContribution.prototype.versions;

/**
 * @type {!API.Client.UpdateAudit}
 * @export
 */
API.Client.NewContribution.prototype.audit;

