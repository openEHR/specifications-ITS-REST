goog.provide('API.Client.Composition');

/**
 * A COMPOSITION resource
 * @record
 */
API.Client.Composition = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Composition.prototype.type;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.Composition.prototype.language;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.Composition.prototype.territory;

/**
 * @type {!API.Client.DvCodedText}
 * @export
 */
API.Client.Composition.prototype.category;

/**
 * @type {!API.Client.EventContext}
 * @export
 */
API.Client.Composition.prototype.context;

/**
 * @type {!API.Client.PartyProxy}
 * @export
 */
API.Client.Composition.prototype.composer;

/**
 * @type {!Array<!API.Client.ContentItem>}
 * @export
 */
API.Client.Composition.prototype.content;

