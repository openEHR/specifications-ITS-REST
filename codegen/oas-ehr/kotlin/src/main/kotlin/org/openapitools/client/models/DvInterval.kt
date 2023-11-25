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

import org.openapitools.client.models.DataValue

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param type 
 */


interface DvInterval : DataValue {

    @Json(name = "lower_unbounded")
    val lowerUnbounded: kotlin.Boolean
    @Json(name = "upper_unbounded")
    val upperUnbounded: kotlin.Boolean
    @Json(name = "lower_included")
    val lowerIncluded: kotlin.Boolean
    @Json(name = "upper_included")
    val upperIncluded: kotlin.Boolean
    @Json(name = "_type")
    val type: kotlin.String?
}
