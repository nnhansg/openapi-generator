/**
* OpenAPI Petstore
* This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
*
* The version of the OpenAPI document: 1.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models

import org.openapitools.client.models.Category
import org.openapitools.client.models.Tag

import com.google.gson.annotations.SerializedName
/**
 * A pet for sale in the pet store
 * @param name 
 * @param photoUrls 
 * @param id 
 * @param category 
 * @param tags 
 * @param status pet status in the store
 */

data class Pet (
    @SerializedName("name")
    val name: kotlin.String,
    @SerializedName("photoUrls")
    val photoUrls: kotlin.Array<kotlin.String>,
    @SerializedName("id")
    val id: kotlin.Long? = null,
    @SerializedName("category")
    val category: Category? = null,
    @SerializedName("tags")
    val tags: kotlin.Array<Tag>? = null,
    /* pet status in the store */
    @SerializedName("status")
    val status: Pet.Status? = null
) 


{
    /**
    * pet status in the store
    * Values: available,pending,sold
    */
    
    enum class Status(val value: kotlin.String){
        @SerializedName(value="available")  available("available"),
        @SerializedName(value="pending")  pending("pending"),
        @SerializedName(value="sold")  sold("sold");
    }
}

