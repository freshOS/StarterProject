//
//  File.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Arrow

extension Photo : ArrowParsable {
    
    public mutating func deserialize(_ json: JSON) {
        identifier <-- json["id"]
        title <-- json["title"]
        imageUrl <-- json["url"]
    }
}
