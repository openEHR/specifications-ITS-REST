goog.provide('API.Client.FeederAudit');

/**
 * @record
 */
API.Client.FeederAudit = function() {}

/**
 * @type {!Array<!API.Client.DvIdentifier>}
 * @export
 */
API.Client.FeederAudit.prototype.originatingSystemItemIds;

/**
 * @type {!Array<!API.Client.DvIdentifier>}
 * @export
 */
API.Client.FeederAudit.prototype.feederSystemItemIds;

/**
 * @type {!API.Client.DvEncapsulated}
 * @export
 */
API.Client.FeederAudit.prototype.originalContent;

/**
 * @type {!API.Client.FeederAuditDetails}
 * @export
 */
API.Client.FeederAudit.prototype.originatingSystemAudit;

/**
 * @type {!API.Client.FeederAuditDetails}
 * @export
 */
API.Client.FeederAudit.prototype.feederSystemAudit;

