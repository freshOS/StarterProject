//
//  WSApi.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import ws
import then

// This is our JSON Api Code
// Yes! This is all that's needed to get nice Swift models from a JSON api!!!!
// Thanks to the power of generics, ws will return what you want! (Void, JSON, Model, [Model] etc)

class WSApi: ApiInterface {
    
    let ws = WS("https://jsonplaceholder.typicode.com") // Set the Webservice base URL
    
    // Set the type you want back and call the endpoint you need.
    func fetchPhotos() -> Promise<[Photo]> {
        return ws.get("/photos")
    }
    
    
    // get JSON back instead
    // func fetchPhotos() -> Promise<[JSON]> {
    //     return ws.get("/photos")
    // }
 
    // get a Void callback
    // func fetchPhotos() -> Promise<[Void]> {
    //     return ws.get("/photos")
    // }
}
