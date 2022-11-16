goog.provide('API.Client.Attestation');

/**
 * @record
 */
API.Client.Attestation = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Attestation.prototype.type;

/**
 * @type {!API.Client.DvMultimedia}
 * @export
 */
API.Client.Attestation.prototype.attestedView;

/**
 * @type {!string}
 * @export
 */
API.Client.Attestation.prototype.proof;

/**
 * @type {!Array<!API.Client.DvEhrUri>}
 * @export
 */
API.Client.Attestation.prototype.items;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Attestation.prototype.reason;

/**
 * @type {!boolean}
 * @export
 */
API.Client.Attestation.prototype.isPending;

/**
 * @type {!string}
 * @export
 */
API.Client.Attestation.prototype.systemId;

/**
 * @type {!API.Client.DvDateTime}
 * @export
 */
API.Client.Attestation.prototype.timeCommitted;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.Attestation.prototype.changeType;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Attestation.prototype.description;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.Attestation.prototype.committer;

