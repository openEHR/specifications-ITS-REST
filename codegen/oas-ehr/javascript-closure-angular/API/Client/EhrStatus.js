goog.provide('API.Client.EhrStatus');

/**
 * An EHR_STATUS resource
 * @record
 */
API.Client.EhrStatus = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.EhrStatus.prototype.type;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.EhrStatus.prototype.subject;

/**
 * @type {!boolean}
 * @export
 */
API.Client.EhrStatus.prototype.isQueryable;

/**
 * @type {!boolean}
 * @export
 */
API.Client.EhrStatus.prototype.isModifiable;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.EhrStatus.prototype.otherDetails;

