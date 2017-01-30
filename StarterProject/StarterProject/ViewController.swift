//
//  ViewController.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var photos = [Photo]()
    var v = View()
    override func loadView() { view = v }
    override func viewDidLoad() {
        super.viewDidLoad()
        v.tableView.dataSource = self
        api.fetchPhotos().then { fetchedPhotos in
            self.photos = fetchedPhotos
        }.onError { e in
            print(e)
            // handle error
        }.finally {
            self.v.tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let photo = photos[indexPath.row]
        cell.textLabel?.text = photo.title
        return cell
    }
}




