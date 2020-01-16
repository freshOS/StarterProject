//
//  PhotoCell.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import UIKit
import Stevia

// This is our custom UITableViewCell.
// This is what replaces the heavy xml Storyboard file when you dev views in code.

// Get the full documentation at https://github.com/freshOS/Stevia

class PhotoCell: UITableViewCell {
    
    let title = UILabel()
    let photo = UIImageView()
    
    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder)}
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // This adds our views to the cell's content view as needed
        // and prepares them for autolayout use.
        // This has the advantage of being very visual. Indeed, sv calls can be nested
        // and you see the view hierarchy right away.
        sv(
            title,
            photo
        )
        
        // Here we layout the cell.
        layout(
            16,
            |-16-title-16-|,
            16,
            |-16-photo-16-|,
            16
        )
        photo.heightEqualsWidth()
        
        // The advantages are many:
        // - The layout is visual
        // - The syntax is consise
        // - Easier to write/maintain
        // - Automatically set constraints on the content view in the context of a UITableViewCell
        
        
        
        // Here is how native code would be :
        // (See View.swift to have examples prior to ios 9)
        
        // title.translatesAutoresizingMaskIntoConstraints = false
        // photo.translatesAutoresizingMaskIntoConstraints = false
        // contentView.addSubview(title)
        // contentView.addSubview(photo)
        
        // if #available(iOS 9.0, *) {
        // title
        // contentView.addConstraints([
        //    title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
        //    title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
        //    title.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16)
        // ])
            
        // photo
        // contentView.addConstraints([
        //     photo.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 16),
        //     photo.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
        //     photo.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
        //     photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
        //     photo.heightAnchor.constraint(equalTo: photo.widthAnchor)
        // ])
        // }

        // Configure visual elements
        title.numberOfLines = 0
        photo.backgroundColor = .lightGray
    }
}
