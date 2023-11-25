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

import org.openapitools.client.models.DvInterval
import org.openapitools.client.models.DvText

import com.squareup.moshi.Json
import com.squareup.moshi.JsonClass

/**
 * 
 *
 * @param meaning 
 * @param range 
 */


data class ReferenceRange (

    @Json(name = "meaning")
    val meaning: DvText,

    @Json(name = "range")
    val range: DvInterval

)
