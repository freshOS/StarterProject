//
//  View.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import Stevia

class View: UIView {
    
    let tableView = UITableView()
    
    convenience init() {
        self.init(frame:CGRect.zero)
        sv(tableView)
        tableView.fillContainer()
        tableView.register(PhotoCell.self, forCellReuseIdentifier: "PhotoCell")
        tableView.estimatedRowHeight = 200 // Enable self-sizing cells
    }

}
