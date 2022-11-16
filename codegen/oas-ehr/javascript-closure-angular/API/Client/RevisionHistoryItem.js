goog.provide('API.Client.RevisionHistoryItem');

/**
 * A REVISION_HISTORY_ITEM resource
 * @record
 */
API.Client.RevisionHistoryItem = function() {}

/**
 * @type {!API.Client.ObjectVersionId}
 * @export
 */
API.Client.RevisionHistoryItem.prototype.versionId;

/**
 * @type {!Array<!API.Client.AuditDetails>}
 * @export
 */
API.Client.RevisionHistoryItem.prototype.audits;

