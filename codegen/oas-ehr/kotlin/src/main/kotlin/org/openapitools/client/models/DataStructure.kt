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

import org.openapitools.client.models.Composition
import org.openapitools.client.models.EhrStatus
import org.openapitools.client.models.Folder
import org.openapitools.client.models.ItemList
import org.openapitools.client.models.ItemSingle
import org.openapitools.client.models.ItemStructure
import org.openapitools.client.models.ItemTable
import org.openapitools.client.models.ItemTree
import org.openapitools.client.models.Locatable

import com.squareup.moshi.Json

/**
 * 
 *
 * @param type 
 */


interface DataStructure : Locatable {

    @Json(name = "_type")
    val type: kotlin.String?
}
