//
//  Api.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import then

protocol ApiInterface {
    func fetchPhotos() -> Promise<[Photo]>
}


var api: ApiInterface!
