goog.provide('API.Client.Version');

/**
 * A VERSION resource
 * @record
 */
API.Client.Version = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Version.prototype.type;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.Version.prototype.contribution;

/**
 * @type {!string}
 * @export
 */
API.Client.Version.prototype.signature;

/**
 * @type {!API.Client.AuditDetails}
 * @export
 */
API.Client.Version.prototype.commitAudit;

/**
 * @type {!API.Client.Versionable}
 * @export
 */
API.Client.Version.prototype.data;

