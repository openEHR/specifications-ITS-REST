goog.provide('API.Client.UpdateAttestation');

/**
 * @record
 */
API.Client.UpdateAttestation = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.UpdateAttestation.prototype.type;

/**
 * @type {!API.Client.DvMultimedia}
 * @export
 */
API.Client.UpdateAttestation.prototype.attestedView;

/**
 * @type {!string}
 * @export
 */
API.Client.UpdateAttestation.prototype.proof;

/**
 * @type {!Array<!API.Client.DvEhrUri>}
 * @export
 */
API.Client.UpdateAttestation.prototype.items;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.UpdateAttestation.prototype.reason;

/**
 * @type {!boolean}
 * @export
 */
API.Client.UpdateAttestation.prototype.isPending;

/**
 * @type {!API.Client.TerminologyCode}
 * @export
 */
API.Client.UpdateAttestation.prototype.changeType;

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.UpdateAttestation.prototype.description;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.UpdateAttestation.prototype.committer;

