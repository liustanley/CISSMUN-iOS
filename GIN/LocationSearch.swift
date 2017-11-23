//
//  LocationSearch.swift
//  CISSMUN
//
//  Created by Tanya Lai on 9/3/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

var roomies = [Room]()
var images = [ #imageLiteral(resourceName: "HS 1"),#imageLiteral(resourceName: "HS 2"), #imageLiteral(resourceName: "HS 3"),#imageLiteral(resourceName: "HS 4"),#imageLiteral(resourceName: "HS 5"),#imageLiteral(resourceName: "HS 6"),  #imageLiteral(resourceName: "1st Floor Intermediate"), #imageLiteral(resourceName: "2nd Floor Intermediate"),  #imageLiteral(resourceName: "ES 1st Floor"), #imageLiteral(resourceName: "ES 2nd Floor"), #imageLiteral(resourceName: "ES 3rd Floor"), #imageLiteral(resourceName: "ES 4th Floor"), #imageLiteral(resourceName: "1st Floor Rittmann"), #imageLiteral(resourceName: "2nd Floor Rittmann"), #imageLiteral(resourceName: "3rd Floor Rittmann"), #imageLiteral(resourceName: "4th Floor Rittmann"), #imageLiteral(resourceName: "1st Floor Phoenix"), #imageLiteral(resourceName: "2nd Floor Phoenix"), #imageLiteral(resourceName: "HS B1")]
var text = ["1st Floor of the Upper Building","2nd Floor of the Upper Building","3rd Floor of the Upper Building","4th Floor of the Upper Building","5th Floor of the Upper Building","6th Floor of the Upper Building","1st Floor of the Intermediate Building","2nd Floor of the Intermediate Building","1st Floor of the Lower Building","2nd Floor of the Lower Building","3rd Floor of the Lower Building","4th Floor of the Lower Building","1st Floor of the Rittmann","2nd Floor of the Rittmann","3rd Floor of the Rittmann","4th Floor of the Rittmann","1st Floor of the Phoenix Center","2nd Floor of the Phoenix Center","Basement of the Upper Building"] //HS to MS to ES to RT to Phoenix Center  0-18
var row = 0

class LocationSearch: UITableViewController, UISearchResultsUpdating{

    
    var filtered = [Room]()
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roomies = [
            Room(roomName:"GA4, Wittenberg Hall (H316/H318)", floorNumber: 2),
            Room(roomName:"GA3, PC Lounge", floorNumber:1),
            Room(roomName:"ECOSOC, HS Gym (H115)", floorNumber: 0),
            Room(roomName:"P228, Phoenix Café", floorNumber: 1),
            Room(roomName:"Approval Panel, HS Library (H227)", floorNumber: 1),
            Room(roomName:"H233, HS Conference Room", floorNumber: 1),
            Room(roomName:"Environmental, Augsburg Hall (H405/H406)", floorNumber: 3),
            Room(roomName:"GA6, MS Gym (M116)", floorNumber: 7),
            Room(roomName:"HRC, ES Library (E322)", floorNumber: 10),
            Room(roomName:"E122, ES Cafeteria", floorNumber: 8),
            Room(roomName:"SC, Orchestra Room (R302)", floorNumber: 14),
            Room(roomName:"Cafeteria", floorNumber: 16),
            Room(roomName:"ICJ (H116)", floorNumber: 0),
            Room(roomName:"CSW, Jade/Pearl (P230/P231)", floorNumber: 17),
            Room(roomName:"Secretariat/Hive, Costume Room (P135)", floorNumber: 16),
            Room(roomName:"Advis. Panel, Health Room (H127)", floorNumber: 0),
            Room(roomName:"R101, Rittmann Theatre", floorNumber: 12),
            Room(roomName:"CISSMUN Vigil (H305)", floorNumber: 2),
            Room(roomName:"Spec Conf (H404)", floorNumber: 3),
            Room(roomName:"UNPFII (H403)", floorNumber:3),
            Room(roomName:"ICC, New Luther (P201)", floorNumber: 17),
            Room(roomName:"Printing (H205)", floorNumber: 1),
            Room(roomName:"Keynote Speakers, Phoenix Center Gym (P106)", floorNumber:16),
            Room(roomName:"Classroom next to Jade/Pearl???", floorNumber: 17),
            Room(roomName:"H203", floorNumber:1),
            Room(roomName:"H204", floorNumber:1),
            Room(roomName:"H206", floorNumber:1),
            Room(roomName:"MS and HS classrooms Schools???", floorNumber:0),
            Room(roomName:"Disarmament, Motor Skills Room",floorNumber:8),
            
            Room(roomName:"GA1, PE Commons", floorNumber: 18),
            
            
            Room(roomName:"P232",floorNumber:17),
            Room(roomName:"P233",floorNumber:17),
            Room(roomName:"P234",floorNumber:17),
            Room(roomName:"P202",floorNumber:17),
            Room(roomName:"P203",floorNumber:17),
            Room(roomName:"P204",floorNumber:17),
            Room(roomName:"M101, MS Reception",floorNumber:6),
            Room(roomName:"M104",floorNumber:6),
            Room(roomName:"M105",floorNumber:6),
            Room(roomName:"M106",floorNumber:6),
            Room(roomName:"M107",floorNumber:6),
            Room(roomName:"M108",floorNumber:6),
            Room(roomName:"M109",floorNumber:6),
            Room(roomName:"M110",floorNumber:6),
            Room(roomName:"M201",floorNumber:7),
            Room(roomName:"M204",floorNumber:7),
            Room(roomName:"M205",floorNumber:7),
            Room(roomName:"M206",floorNumber:7),
            Room(roomName:"M207",floorNumber:7),
            Room(roomName:"M208",floorNumber:7),
            Room(roomName:"M209",floorNumber:7),
            Room(roomName:"M210",floorNumber:7),
            Room(roomName:"M211",floorNumber:7),
            Room(roomName:"M223",floorNumber:7),
            Room(roomName:"P133",floorNumber:16),
            Room(roomName:"P134",floorNumber:16),
            Room(roomName:"P135",floorNumber:16),
            Room(roomName:"H118",floorNumber:0),
            Room(roomName:"H216", floorNumber:1),
            Room(roomName:"H306", floorNumber:2),
            Room(roomName:"H304", floorNumber:2),
            Room(roomName:"H303", floorNumber:2),
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
