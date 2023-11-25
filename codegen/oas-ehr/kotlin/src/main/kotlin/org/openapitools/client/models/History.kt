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

import org.openapitools.client.models.DvDateTime
import org.openapitools.client.models.DvDuration
import org.openapitools.client.models.Event
import org.openapitools.client.models.ItemStructure
import org.openapitools.client.models.Locatable

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param type 
 */


interface History : Locatable {

    @Json(name = "origin")
    val origin: DvDateTime
    @Json(name = "_type")
    val type: kotlin.String?
    @Json(name = "period")
    val period: DvDuration?
    @Json(name = "duration")
    val duration: DvDuration?
    @Json(name = "summary")
    val summary: ItemStructure?
    @Json(name = "events")
    val events: kotlin.collections.List<Event>?
}
