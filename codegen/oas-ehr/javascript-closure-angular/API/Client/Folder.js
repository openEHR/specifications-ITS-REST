goog.provide('API.Client.Folder');

/**
 * A FOLDER resource
 * @record
 */
API.Client.Folder = function() {}

/**
 * @type {!string}
 * @export
 */
API.Client.Folder.prototype.type;

/**
 * @type {!Array<!API.Client.ObjectRef>}
 * @export
 */
API.Client.Folder.prototype.items;

/**
 * @type {!Array<!API.Client.Folder>}
 * @export
 */
API.Client.Folder.prototype.folders;

/**
 * @type {!API.Client.ItemStructure}
 * @export
 */
API.Client.Folder.prototype.details;

