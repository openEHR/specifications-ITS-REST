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
import org.openapitools.client.models.ItemStructure
import org.openapitools.client.models.PartyIdentified
import org.openapitools.client.models.PartyProxy

import com.squareup.moshi.Json

/**
 * 
 *
 * @param systemId 
 * @param location 
 * @param subject 
 * @param provider 
 * @param time 
 * @param versionId 
 * @param otherDetails 
 */


data class FeederAuditDetails (

    @Json(name = "system_id")
    val systemId: kotlin.String,

    @Json(name = "location")
    val location: PartyIdentified? = null,

    @Json(name = "subject")
    val subject: PartyProxy? = null,

    @Json(name = "provider")
    val provider: PartyIdentified? = null,

    @Json(name = "time")
    val time: DvDateTime? = null,

    @Json(name = "version_id")
    val versionId: kotlin.String? = null,

    @Json(name = "other_details")
    val otherDetails: ItemStructure? = null

)
