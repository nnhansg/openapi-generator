//
// StoreAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Alamofire

public class StoreAPI: APIBase {
    /**
     Delete purchase order by ID
     
     - parameter orderId: (path) ID of the order that needs to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteOrder(orderId orderId: String, completion: ((error: ErrorType?) -> Void)) {
        deleteOrderWithRequestBuilder(orderId: orderId).execute { (_, error) -> Void in
            completion(error: error)
        }
    }

    /**
     Delete purchase order by ID
     - DELETE /store/order/{orderId}
     - For valid response try integer IDs with value < 1000. Anything above 1000 or nonintegers will generate API errors     - parameter orderId: (path) ID of the order that needs to be deleted 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteOrderWithRequestBuilder(orderId orderId: String) -> RequestBuilder<Void> {
        var path = "/store/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String: AnyObject?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Returns pet inventories by status
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getInventory(completion: ((data: [String: Int32]?, error: ErrorType?) -> Void)) {
        getInventoryWithRequestBuilder().execute { (response, error) -> Void in
            completion(data: response?.body, error: error)
        }
    }

    /**
     Returns pet inventories by status
     - GET /store/inventory
     - Returns a map of status codes to quantities     - API Key:
       - type: apiKey api_key 
       - name: api_key

     - returns: RequestBuilder<[String:Int32]> 
     */
    public class func getInventoryWithRequestBuilder() -> RequestBuilder<[String: Int32]> {
        let path = "/store/inventory"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String: AnyObject?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<[String: Int32]>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Find purchase order by ID
     
     - parameter orderId: (path) ID of pet that needs to be fetched 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getOrderById(orderId orderId: String, completion: ((data: Order?, error: ErrorType?) -> Void)) {
        getOrderByIdWithRequestBuilder(orderId: orderId).execute { (response, error) -> Void in
            completion(data: response?.body, error: error)
        }
    }

    /**
     Find purchase order by ID
     - GET /store/order/{orderId}
     - For valid response try integer IDs with value <= 5 or > 10. Other values will generated exceptions     - examples: [{contentType=application/json, example={
  "petId" : 6,
  "quantity" : 1,
  "id" : 0,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "complete" : true,
  "status" : "placed"
}}, {contentType=application/xml, example=<Order>
  <id>123456789</id>
  <petId>123456789</petId>
  <quantity>123</quantity>
  <shipDate>2000-01-23T04:56:07.000Z</shipDate>
  <status>aeiou</status>
  <complete>true</complete>
</Order>}]
     - examples: [{contentType=application/json, example={
  "petId" : 6,
  "quantity" : 1,
  "id" : 0,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "complete" : true,
  "status" : "placed"
}}, {contentType=application/xml, example=<Order>
  <id>123456789</id>
  <petId>123456789</petId>
  <quantity>123</quantity>
  <shipDate>2000-01-23T04:56:07.000Z</shipDate>
  <status>aeiou</status>
  <complete>true</complete>
</Order>}]
     - parameter orderId: (path) ID of pet that needs to be fetched 

     - returns: RequestBuilder<Order> 
     */
    public class func getOrderByIdWithRequestBuilder(orderId orderId: String) -> RequestBuilder<Order> {
        var path = "/store/order/{orderId}"
        path = path.stringByReplacingOccurrencesOfString("{orderId}", withString: "\(orderId)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String: AnyObject?] = [:]

        let parameters = APIHelper.rejectNil(nillableParameters)

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Place an order for a pet
     
     - parameter order: (body) order placed for purchasing the pet (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func placeOrder(order order: Order? = nil, completion: ((data: Order?, error: ErrorType?) -> Void)) {
        placeOrderWithRequestBuilder(order: order).execute { (response, error) -> Void in
            completion(data: response?.body, error: error)
        }
    }

    /**
     Place an order for a pet
     - POST /store/order     - examples: [{contentType=application/json, example={
  "petId" : 6,
  "quantity" : 1,
  "id" : 0,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "complete" : true,
  "status" : "placed"
}}, {contentType=application/xml, example=<Order>
  <id>123456789</id>
  <petId>123456789</petId>
  <quantity>123</quantity>
  <shipDate>2000-01-23T04:56:07.000Z</shipDate>
  <status>aeiou</status>
  <complete>true</complete>
</Order>}]
     - examples: [{contentType=application/json, example={
  "petId" : 6,
  "quantity" : 1,
  "id" : 0,
  "shipDate" : "2000-01-23T04:56:07.000+00:00",
  "complete" : true,
  "status" : "placed"
}}, {contentType=application/xml, example=<Order>
  <id>123456789</id>
  <petId>123456789</petId>
  <quantity>123</quantity>
  <shipDate>2000-01-23T04:56:07.000Z</shipDate>
  <status>aeiou</status>
  <complete>true</complete>
</Order>}]
     - parameter order: (body) order placed for purchasing the pet (optional)

     - returns: RequestBuilder<Order> 
     */
    public class func placeOrderWithRequestBuilder(order order: Order? = nil) -> RequestBuilder<Order> {
        let path = "/store/order"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = order?.encodeToJSON() as? [String: AnyObject]

        let convertedParameters = APIHelper.convertBoolToString(parameters)

        let requestBuilder: RequestBuilder<Order>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
