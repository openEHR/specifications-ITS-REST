goog.provide('API.Client.FeederAuditDetails');

/**
 * @record
 */
API.Client.FeederAuditDetails = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.FeederAuditDetails.prototype.systemId;

/**
 * @type {!API.Client.PartyIdentified}
 * @export
 */
API.Client.FeederAuditDetails.prototype.location;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.FeederAuditDetails.prototype.subject;

/**
 * @type {!API.Client.PartyIdentified}
 * @export
 */
API.Client.FeederAuditDetails.prototype.provider;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.FeederAuditDetails.prototype.time;

/**
 * @type {!string}
 * @export
 */
API.Client.FeederAuditDetails.prototype.versionId;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.FeederAuditDetails.prototype.otherDetails;

