//
//  WSApi.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import ws
import then

class WSApi: ApiInterface {
    
    let ws = WS("https://jsonplaceholder.typicode.com")
    
    func fetchPhotos() -> Promise<[Photo]> {
        return ws.get("/photos")
    }
}
