//
//  LocationSearch.swift
//  CISSMUN
//
//  Created by Tanya Lai on 9/3/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

var roomies = [Room]()
var images = [ #imageLiteral(resourceName: "HS 3rd Floor"), #imageLiteral(resourceName: "HS 2nd Floor") ]
var text = ["3rd Floor of the Upper Building","2nd Floor of the Upper Building"]
var row = 0

class LocationSearch: UITableViewController, UISearchResultsUpdating{

    
    
    
    var filtered = [Room]()
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomies = [
            Room(roomName:"H316/H318, Wittenberg Hall"),
            Room(roomName:"PC Lounge"),
            Room(roomName:"H115, HS Gym, ECOSOC"),
            Room(roomName:"P228, Phoenix Café"),
            Room(roomName:"H227, HS Library, Approval Panel"),
            Room(roomName: "H233, HS Conference Room"),
            Room(roomName:"H405/H406, Augsburg Hall, Environmental Committee"),
            Room(roomName:"P106, PC Gym"),
            Room(roomName:"M116, MS Gym"),
            Room(roomName:"E322, ES Library, HRC"),
            Room(roomName:"E122, ES Cafeteria"),
            Room(roomName:"R302, Orchestra Room"),
            Room(roomName:"PC Commons"),
            Room(roomName:"H116, Old Luther, ICJ"),
            Room(roomName:"P230/P231, Jade/Pearl, CSW"),
            Room(roomName:"R110, Costume Room, Secretariat/Hive"),
            Room(roomName:"H127, Health Room"),
            Room(roomName:"R101, Rittman Theatre"),
            Room(roomName:"H305, CISSMUN Vigil"),
            Room(roomName:"H404, Spec Conf"),
            Room(roomName:"H403, UNPFII"),
            Room(roomName:"P201, New Luther, ICC"),
            Room(roomName:"H205, Printing"),
            Room(roomName:"P106, Phoenix Center Gym, Keynote Speakers"),
            Room(roomName:"Classroom next to Jade/Pearl???"),
            Room(roomName:"H203"),
            Room(roomName:"H204"),
            Room(roomName:"H206"),
            Room(roomName:"MS and HS classrooms Schools???"),
            Room(roomName:"MSR???")
        ]

        
        searchController = UISearchController(searchResultsController: resultsController)
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self
        resultsController.tableView.dataSource = self
        resultsController.tableView.delegate = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        searchController.hidesNavigationBarDuringPresentation = false
        //searchController.searchBar.barTintColor = UIColor.black
    }

        
    
    func updateSearchResults(for searchController: UISearchController) {
        filtered = roomies.filter({(room:Room) -> Bool in
             return room.roomName.lowercased().contains(self.searchController.searchBar.text!.lowercased())
            
        })
        resultsController.tableView.reloadData()
    }
    
    
    
    // MARK: - Table view data source
        override  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if tableView == resultsController.tableView{
            return filtered.count
        }
        else {
            return roomies.count
        }
 
    }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        if tableView == resultsController.tableView{
             let cell = UITableViewCell()
            cell.textLabel?.text = filtered[indexPath.row].roomName
            return cell
        }
        else {
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell")! as UITableViewCell
            cell.textLabel?.text = roomies[indexPath.row].roomName
            return cell
        }
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        row = indexPath.row
    }
    /*
    func tableView(_ tableView: UITableView, didSelectRow indexPath: IndexPath) {
        
    }
    */
}
