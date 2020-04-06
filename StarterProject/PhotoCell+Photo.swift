//
//  PhotoCell+Photo.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Foundation
import Kingfisher

// Here we populate our TableView cell with our Model Data.
// This could be in the view controller but we like to keep 
// it separate. :). Plus this can be used in other controllers without having to copy-paste code \o/

extension PhotoCell {
    
    func render(with p: Photo) {
        title.text = p.title
        photo.kf.setImage(with: p.imageUrl)
    }
}
