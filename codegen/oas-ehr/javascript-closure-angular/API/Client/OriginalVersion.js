goog.provide('API.Client.OriginalVersion');

/**
 * @record
 */
API.Client.OriginalVersion = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.OriginalVersion.prototype.type;

/**
 * @type {!API.Client.ObjectVersionId}
 * @export
 */
API.Client.OriginalVersion.prototype.uid;

/**
 * @type {!API.Client.ObjectVersionId}
 * @export
 */
API.Client.OriginalVersion.prototype.precedingVersionUid;

/**
 * @type {!Array<!API.Client.ObjectVersionId>}
 * @export
 */
API.Client.OriginalVersion.prototype.otherInputVersionUids;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.OriginalVersion.prototype.lifecycleState;

/**
 * @type {!Array<!API.Client.Attestation>}
 * @export
 */
API.Client.OriginalVersion.prototype.attestations;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.OriginalVersion.prototype.contribution;

/**
 * @type {!string}
 * @export
 */
API.Client.OriginalVersion.prototype.signature;

/**
 * @type {!API.Client.AuditDetails}
 * @export
 */
API.Client.OriginalVersion.prototype.commitAudit;

/**
 * @type {!API.Client.Versionable}
 * @export
 */
API.Client.OriginalVersion.prototype.data;

