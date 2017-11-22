//
//  LocationSearch.swift
//  CISSMUN
//
//  Created by Tanya Lai on 9/3/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

var roomies = [Room]()
var images = [ #imageLiteral(resourceName: "HS 1"),#imageLiteral(resourceName: "HS 2"), #imageLiteral(resourceName: "HS 3"),#imageLiteral(resourceName: "HS 4"),#imageLiteral(resourceName: "HS 5"),#imageLiteral(resourceName: "HS 6"),  #imageLiteral(resourceName: "1st Floor Intermediate"), #imageLiteral(resourceName: "2nd Floor Intermediate"),  #imageLiteral(resourceName: "ES 1st Floor"), #imageLiteral(resourceName: "ES 2nd Floor"), #imageLiteral(resourceName: "ES 3rd Floor"), #imageLiteral(resourceName: "ES 4th Floor"), #imageLiteral(resourceName: "1st Floor Rittmann"), #imageLiteral(resourceName: "2nd Floor Rittmann"), #imageLiteral(resourceName: "3rd Floor Rittmann"), #imageLiteral(resourceName: "4th Floor Rittmann"), #imageLiteral(resourceName: "1st Floor Phoenix"), #imageLiteral(resourceName: "2nd Floor Phoenix")]
var text = ["1st Floor of the Upper Building","2nd Floor of the Upper Building","3rd Floor of the Upper Building","4th Floor of the Upper Building","5th Floor of the Upper Building","6th Floor of the Upper Building","1st Floor of the Intermediate Building","2nd Floor of the Intermediate Building","1st Floor of the Lower Building","2nd Floor of the Lower Building","3rd Floor of the Lower Building","4th Floor of the Lower Building","1st Floor of the Rittmann","2nd Floor of the Rittmann","3rd Floor of the Rittmann","4th Floor of the Rittmann","1st Floor of the Phoenix Center","2nd Floor of the Phoenix Center"] //HS to MS to ES to RT to Phoenix Center  0-17
var row = 0

class LocationSearch: UITableViewController, UISearchResultsUpdating{

    var filtered = [Room]()
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomies = [
            Room(roomName:"H316/H318, Wittenberg Hall", floorNumber: 2),
            Room(roomName:"PC Lounge", floorNumber:1),
            Room(roomName:"H115, HS Gym, ECOSOC", floorNumber: 0),
            Room(roomName:"P228, Phoenix Café", floorNumber: 1),
            Room(roomName:"H227, HS Library, Approval Panel", floorNumber: 1),
            Room(roomName: "H233, HS Conference Room", floorNumber: 1),
            Room(roomName:"H405/H406, Augsburg Hall, Environmental Committee", floorNumber: 3),
            Room(roomName:"P106, PC Gym", floorNumber: 16),
            Room(roomName:"M116, MS Gym", floorNumber: 7),
            Room(roomName:"E322, ES Library, HRC", floorNumber: 10),
            Room(roomName:"E122, ES Cafeteria", floorNumber: 8),
            Room(roomName:"R302, Orchestra Room", floorNumber: 14),
            Room(roomName:"PC Commons", floorNumber: 16),
            Room(roomName:"H116, Old Luther, ICJ", floorNumber: 0),
            Room(roomName:"P230/P231, Jade/Pearl, CSW", floorNumber: 17),
            Room(roomName:"R110, Costume Room, Secretariat/Hive", floorNumber: 12),
            Room(roomName:"H127, Health Room", floorNumber: 0),
            Room(roomName:"R101, Rittmann Theatre", floorNumber: 12),
            Room(roomName:"H305, CISSMUN Vigil", floorNumber: 2),
            Room(roomName:"H404, Spec Conf", floorNumber: 3),
            Room(roomName:"H403, UNPFII", floorNumber:3),
            Room(roomName:"P201, New Luther, ICC", floorNumber: 17),
            Room(roomName:"H205, Printing", floorNumber: 1),
            Room(roomName:"P106, Phoenix Center Gym, Keynote Speakers", floorNumber:16),
            Room(roomName:"Classroom next to Jade/Pearl???", floorNumber: 17),
            Room(roomName:"H203", floorNumber:1),
            Room(roomName:"H204", floorNumber:1),
            Room(roomName:"H206", floorNumber:1),
            Room(roomName:"MS and HS classrooms Schools???", floorNumber:0),
            Room(roomName:"MSR???",floorNumber:6)
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
        if tableView == resultsController.tableView{
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "segueone", sender: nil)
            }
        }
            /*
        else {
            DispatchQueue.main.async {
                self.performSegue(withIdentifier: "segueone", sender: nil)
            }
        }
        */
        
    }
    /*
    func tableView(_ tableView: UITableView, didSelectRow indexPath: IndexPath) {
        
    }
    */
}
