//
//  LocationSearch.swift
//  CISSMUN
//
//  Created by Tanya Lai on 9/3/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class LocationSearch: UITableViewController, UISearchResultsUpdating{

    
    var array = ["H001","H004", "H005", "H006", "H007", "H015", "H015A", "H015B", "H018", "H020", "H026","H030","H032","H034", "H036", "H040", "H041", "H103", "H104", "H105", "H115, HS Gym", "H116A", "H116B", "H117", "H118", "H127", "H129", "H133", "Phoenix Café", "PC Lounge", "HS Library", "H201", "H203", "H204", "H205", "H206", "H216", "H218", "H229", "H230", "H231", "H232", "H233", "H234", "H235", "H236", "H237", "H240", "H301", "H303", "H304", "H305", "H306", "H316, Wittenberg Hall", "H318, Wittenberg Hall", "H329", "Augsburg Hall", "H401", "H403", "H404", "H416", "H417", "H418", "H418A", "H429", "H501", "H503", "H504", "H505", "H506", "H516", "H517", "H518", "H518A", "H529", "H601", "H603", "H604", "H605", "H606"]
    
    var filtered = [String]()
    var searchController : UISearchController!
    var resultsController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: resultsController)
        tableView.tableHeaderView = searchController.searchBar
        searchController.searchResultsUpdater = self
        resultsController.tableView.dataSource = self
        resultsController.tableView.delegate = self
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        //searchController.hidesNavigationBarDuringPresentation = false
        //searchController.searchBar.barTintColor = UIColor.black
    }

        
    
    func updateSearchResults(for searchController: UISearchController) {
        filtered = array.filter{ (array:String) -> Bool in
            
            if array.lowercased().contains(self.searchController.searchBar.text!.lowercased()){
                return true
            } else {
                return false
            }
        }
        resultsController.tableView.reloadData()
    }
    
    
    
    // MARK: - Table view data source
    
    
    
        override  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if tableView == resultsController.tableView{
            return filtered.count
        }
        else {
            return array.count
        }
 
    }
    
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
    
        if tableView == resultsController.tableView{
            cell.textLabel?.text = filtered[indexPath.row]
        }
        else {
            cell.textLabel?.text = array[indexPath.row]
        }
        return cell
    }
    /*
    func tableView(_ tableView: UITableView, didSelectRow indexPath: IndexPath) {
        
    }
    */
}
