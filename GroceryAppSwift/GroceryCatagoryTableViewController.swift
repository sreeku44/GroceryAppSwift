//
//  GroceryCatagoryTableViewController.swift
//  GroceryAppSwift
//
//  Created by Sreekala Santhakumari on 2/23/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit



class GroceryCatagoryTableViewController: UITableViewController, AddGroceryCategorySaveDelegate {
    
   
    var groceryCategories = [GroceryCategory]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    let groceryCategory1 = GroceryCategory()
    groceryCategory1.categorytitle = "Walmart"
        
    let groceryCategory2 = GroceryCategory()
    groceryCategory2.categorytitle = "HEB"
        
    let groceryCategory3 = GroceryCategory()
    groceryCategory3.categorytitle = "Kroger"
        
    let groceryCategory4 = GroceryCategory()
    groceryCategory4.categorytitle = "Toys R us"
        
       
        
    groceryCategories.append (groceryCategory1)
    groceryCategories.append(groceryCategory2)
    groceryCategories.append(groceryCategory3)
    groceryCategories.append(groceryCategory4)
        
    let groceyItem1 = GroceryItem()
    groceyItem1.itemTitle = "Chair"
    
    let groceryItem2 = GroceryItem()
    groceryItem2.itemTitle = "Fruits"
        
    let groceryItem3 = GroceryItem()
    groceryItem3.itemTitle = "Vegetables"
        
    let groceryItem4 = GroceryItem()
    groceryItem4.itemTitle = "Toys"
        
        
    groceryCategory1.groceriesItem.append(groceyItem1)
    groceryCategory2.groceriesItem.append(groceryItem2)
    groceryCategory3.groceriesItem.append(groceryItem3)
    groceryCategory3.groceriesItem.append(groceryItem2)
    groceryCategory4.groceriesItem.append(groceryItem4)
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func addGrocerycategorySave(aGCS : GroceryCategory){
        self.groceryCategories.append(aGCS)
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
                return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return groceryCategories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryCategoryCell", for: indexPath)
        
        let groceryCategoryValue = self.groceryCategories[indexPath.row]
        
       cell.textLabel?.text = groceryCategoryValue.categorytitle
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "AddGroceryCategorySegue"){
          let addGroceryCategoryVC = segue.destination as! AddGroceryCatagoryViewController
            addGroceryCategoryVC.delegate = self
        }
        else {
            
            let groceryItemsTVC = segue.destination as! GroceryItemTableViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow
            
            groceryItemsTVC.groceryCategorySelected = groceryCategories[(indexPath?.row)!]
            
        }
    }
    
    

}
