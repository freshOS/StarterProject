//
//  Photo+Api.swift
//  StarterProject
//
//  Created by Sacha DSO on 13/11/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Then

// This is not absolutely needed but it's nice to handle data through
// the models.

extension Photo {
    static func fetchPhotos() -> Promise<[Photo]> {
        return api.fetchPhotos()
    }
}
