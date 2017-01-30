//
//  PhotoCell.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Stevia

class PhotoCell: UITableViewCell {
    
    let title = UILabel()
    let photo = UIImageView()
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        sv(
            title,
            photo
        )
        
        layout(
            16,
            |-16-title-16-|,
            16,
            |-16-photo-16-|,
            16
        )
        photo.heightEqualsWidth()
        
        title.numberOfLines = 0
        photo.backgroundColor = .lightGray
    }
}
