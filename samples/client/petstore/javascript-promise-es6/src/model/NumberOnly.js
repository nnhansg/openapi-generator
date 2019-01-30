/**
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';

/**
 * The NumberOnly model module.
 * @module model/NumberOnly
 * @version 1.0.0
 */
class NumberOnly {
    /**
     * Constructs a new <code>NumberOnly</code>.
     * @alias module:model/NumberOnly
     */
    constructor() { 
        
        NumberOnly.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>NumberOnly</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/NumberOnly} obj Optional instance to populate.
     * @return {module:model/NumberOnly} The populated <code>NumberOnly</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new NumberOnly();

            if (data.hasOwnProperty('JustNumber')) {
                obj['JustNumber'] = ApiClient.convertToType(data['JustNumber'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Number} JustNumber
 */
NumberOnly.prototype['JustNumber'] = undefined;






export default NumberOnly;
