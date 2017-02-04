//
//  ViewController.swift
//  StarterProject
//
//  Created by Sacha Durand Saint Omer on 30/01/2017.
//  Copyright © 2017 freshOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Since we're not using storyboards, we need to use our custom View throught
    // the `loadView` function.
    // Here we decide to call our custome view `v`. It's simple and straighforward.
    var v = View()
    override func loadView() { view = v }
    
    // We need to store an array of Photos
    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // After the view loads, we set ourselves as the delegate of the Tableview.
        v.tableView.dataSource = self
        
        // And we fetch the photos.
        fetchPhotos()
    }
    
    func fetchPhotos() {
        api.fetchPhotos().then { fetchedPhotos in
            // Yay, we got our photos !
            self.photos = fetchedPhotos
        }.onError { e in
            // An error occured :/
            print(e)
        }.finally {
            // In any case, reload the tableView
            self.v.tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath) as? PhotoCell {
            let photo = photos[indexPath.row]
            cell.render(with: photo) // Here we use a render helper to keep our code that populates the 
            // Cell separated, this keeps things nice and clean.
            return cell
        }
        return UITableViewCell()
    }
}




