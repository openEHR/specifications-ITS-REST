goog.provide('API.Client.DvMultimedia');

/**
 * @record
 */
API.Client.DvMultimedia = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.DvMultimedia.prototype.type;

/**
 * @type {!string}
 * @export
 */
API.Client.DvMultimedia.prototype.alternateText;

/**
 * @type {!API.Client.DvUri}
 * @export
 */
API.Client.DvMultimedia.prototype.uri;

/**
 * @type {!string}
 * @export
 */
API.Client.DvMultimedia.prototype.data;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvMultimedia.prototype.mediaType;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvMultimedia.prototype.compressionAlgorithm;

/**
 * @type {!string}
 * @export
 */
API.Client.DvMultimedia.prototype.integrityCheck;

/**
 * @type {!API.Client.CodePhrase}
 * @export
 */
API.Client.DvMultimedia.prototype.integrityCheckAlgorithm;

/**
 * @type {!API.Client.DvMultimedia}
 * @export
 */
API.Client.DvMultimedia.prototype.thumbnail;

/**
 * @type {!number}
 * @export
 */
API.Client.DvMultimedia.prototype.size;

