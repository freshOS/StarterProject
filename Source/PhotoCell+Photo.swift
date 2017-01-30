//
//  PhotoCell+Photo.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Foundation
import Kingfisher

extension PhotoCell {
    
    func render(with p: Photo) {
        title.text = p.title
        self.photo.kf.setImage(with: p.imageUrl)
    }
}
