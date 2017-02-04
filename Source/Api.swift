//
//  Api.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import then

// This is our Api interface.
// In theory we could use ws directly in controllers but this wouldn't be very clean.
// Here we invert the depency by puting an <ApiInterface> interface between view Controllers
// and Networking code.
// Thanks to this layer of abstraction, we could even swap api implementation at runtime if we'd like to !
// See "Dependency inversion principle" for more details.

protocol ApiInterface {
    func fetchPhotos() -> Promise<[Photo]>
}

var api: ApiInterface!
