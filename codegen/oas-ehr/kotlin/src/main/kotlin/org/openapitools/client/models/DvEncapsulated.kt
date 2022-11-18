/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.models

import org.openapitools.client.models.CodePhrase
import org.openapitools.client.models.DataValue
import org.openapitools.client.models.DvMultimedia
import org.openapitools.client.models.DvParsable

import com.squareup.moshi.Json

/**
 * 
 *
 * @param type 
 */


interface DvEncapsulated : DataValue {

    @Json(name = "_type")
    val type: kotlin.String
    @Json(name = "charset")
    val charset: CodePhrase?
    @Json(name = "language")
    val language: CodePhrase?
}
