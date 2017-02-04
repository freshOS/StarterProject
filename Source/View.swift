//
//  View.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Stevia

// This is our custom View.
// This is what replaces the heavy xml Storyboard file when you dev views in code.

class View: UIView {
    
    let tableView = UITableView()
    
    convenience init() {
        self.init(frame:CGRect.zero)
        
        // Here we use Stevia to make our constraints more readable and maintainable.
        sv(tableView)
        tableView.fillContainer()
        

        // Here is how it would look with native autolayout 🙈 :
        
        //tableView.translatesAutoresizingMaskIntoConstraints = false
        //addSubview(tableView)
        //
        //
        //if #available(iOS 9.0, *) {
        //    addConstraints([
        //        tableView.topAnchor.constraint(equalTo: topAnchor),
        //        tableView.rightAnchor.constraint(equalTo: rightAnchor),
        //        tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        //        tableView.leftAnchor.constraint(equalTo: leftAnchor)
        //    ])
        //} else {
        //    // Fallback on earlier versions
        //    
        //    // With visual constraints.
        //    // Though this is shorter, this is also a lot more error prone because of the strings. :/
        //    addConstraints(
        //        NSLayoutConstraint.constraints(withVisualFormat: "|[tableView]|",
        //                                       options: [], metrics: nil,
        //                                       views: ["tableView" : tableView])
        //    )
        //    addConstraints(
        //NSLayoutConstraint.constraints(withVisualFormat: "V:|[tableView]|",
        //                               options: [],
        //                               metrics: nil,
        //                               views: ["tableView" : tableView])
        //    )
        //    
        //    // Here is ho we would write it prior to ios 9
        //    addConstraints([
        //        NSLayoutConstraint(item: tableView,
        //                           attribute: .top,
        //                           relatedBy: .equal,
        //                           toItem: self,
        //                           attribute: .top,
        //                           multiplier: 1,
        //                           constant: 0),
        //        NSLayoutConstraint(item: tableView,
        //                           attribute: .right,
        //                           relatedBy: .equal,
        //                           toItem: self,
        //                           attribute: .right,
        //                           multiplier: 1,
        //                           constant: 0),
        //        NSLayoutConstraint(item: tableView,
        //                           attribute: .bottom,
        //                           relatedBy: .equal,
        //                           toItem: self,
        //                           attribute: .bottom,
        //                           multiplier: 1,
        //                           constant: 0),
        //        NSLayoutConstraint(item: tableView,
        //                           attribute: .left,
        //                           relatedBy: .equal,
        //                           toItem: self,
        //                           attribute: .left,
        //                           multiplier: 1,
        //                           constant: 0)
        //        ])
        //}
        
        // Configure Tablview
        tableView.register(PhotoCell.self, forCellReuseIdentifier: "PhotoCell") // Use PhotoCell
        tableView.estimatedRowHeight = 200 // Enable self-sizing cells
    }
}
