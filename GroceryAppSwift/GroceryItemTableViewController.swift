//
//  GroceryItemTableViewController.swift
//  GroceryAppSwift
//
//  Created by Sreekala Santhakumari on 3/1/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

class GroceryItemTableViewController: UITableViewController , AddGroceryItemSaveDelegate {
    
    
    var groceryCategorySelected = GroceryCategory()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func addGroceyItemSave(aGIS:GroceryItem) {
        self.groceryCategorySelected.groceriesItem.append(aGIS)
        self.tableView.reloadData()
    }
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groceryCategorySelected.groceriesItem.count  }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryItemCell", for: indexPath)
        let groceryItemvalue = groceryCategorySelected.groceriesItem[indexPath.row]
        cell .textLabel?.text = groceryItemvalue.itemTitle
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "AddGroceryItemSegue"){
            let navigationC = segue.destination as! UINavigationController
            let addItemVC = navigationC.viewControllers.first as! AddGroceryItemViewController
            addItemVC.delgate = self
            
            // can use gurd as below or can use an ! 
//            guard let addItemC = navigationC.viewControllers.first as? AddGroceryItemViewController else {
//                fatalError("")
//            }
            //addItemC.delgate =  self
                   }
    }
    

   }
