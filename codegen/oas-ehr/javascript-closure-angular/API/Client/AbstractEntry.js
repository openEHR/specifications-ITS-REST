goog.provide('API.Client.AbstractEntry');

/**
 * @record
 */
API.Client.AbstractEntry = function() {}

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.AbstractEntry.prototype.language;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.AbstractEntry.prototype.encoding;

/**
 * @type {!Array<!API.Client.Participation>}
 * @export
 */
API.Client.AbstractEntry.prototype.otherParticipations;

/**
 * @type {!API.Client.ObjectRef}
 * @export
 */
API.Client.AbstractEntry.prototype.workflowId;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.AbstractEntry.prototype.subject;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.AbstractEntry.prototype.provider;

/**
 * @type {!string}
 * @export
 */
API.Client.AbstractEntry.prototype.type;

