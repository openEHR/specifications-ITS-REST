goog.provide('API.Client.UpdateVersion');

/**
 * @record
 */
API.Client.UpdateVersion = function() {}

/**
 * @type {!API.Client.ObjectVersionId}
 * @export
 */
API.Client.UpdateVersion.prototype.precedingVersionUid;

/**
 * @type {!string}
 * @export
 */
API.Client.UpdateVersion.prototype.signature;

/**
 * @type {!API.Client.TerminologyCode}
 * @export
 */
API.Client.UpdateVersion.prototype.lifecycleState;

/**
 * @type {!Array<!API.Client.UpdateAttestation>}
 * @export
 */
API.Client.UpdateVersion.prototype.attestations;

/**
 * @type {!API.Client.Versionable}
 * @export
 */
API.Client.UpdateVersion.prototype.data;

/**
 * @type {!API.Client.UpdateAudit}
 * @export
 */
API.Client.UpdateVersion.prototype.commitAudit;

