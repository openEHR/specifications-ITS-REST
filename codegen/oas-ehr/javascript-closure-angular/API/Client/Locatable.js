goog.provide('API.Client.Locatable');

/**
 * @record
 */
API.Client.Locatable = function() {}

/**
 * @type {!API.Client.DvText}
 * @export
 */
API.Client.Locatable.prototype.name;

/**
 * @type {!string}
 * @export
 */
API.Client.Locatable.prototype.archetypeNodeId;

/**
 * @type {!API.Client.UidBasedId}
 * @export
 */
API.Client.Locatable.prototype.uid;

/**
 * @type {!Array<!API.Client.Link>}
 * @export
 */
API.Client.Locatable.prototype.links;

/**
 * @type {!API.Client.Archetyped}
 * @export
 */
API.Client.Locatable.prototype.archetypeDetails;

/**
 * @type {!API.Client.FeederAudit}
 * @export
 */
API.Client.Locatable.prototype.feederAudit;

/**
 * @type {!string}
 * @export
 */
API.Client.Locatable.prototype.type;

