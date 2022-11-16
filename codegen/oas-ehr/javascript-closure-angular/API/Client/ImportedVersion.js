goog.provide('API.Client.ImportedVersion');

/**
 * @record
 */
API.Client.ImportedVersion = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.ImportedVersion.prototype.type;

/**
 * @type {!API.Client.OriginalVersion}
 * @export
 */
API.Client.ImportedVersion.prototype.item;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.ImportedVersion.prototype.contribution;

/**
 * @type {!string}
 * @export
 */
API.Client.ImportedVersion.prototype.signature;

/**
 * @type {!API.Client.AuditDetails}
 * @export
 */
API.Client.ImportedVersion.prototype.commitAudit;

/**
 * @type {!API.Client.Versionable}
 * @export
 */
API.Client.ImportedVersion.prototype.data;

