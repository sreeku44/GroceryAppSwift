//
//  AddGroceryItemViewController.swift
//  GroceryAppSwift
//
//  Created by Sreekala Santhakumari on 3/2/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

protocol AddGroceryItemSaveDelegate {

    func addGroceyItemSave(aGIS:GroceryItem)
}

class AddGroceryItemViewController: UIViewController {
    
    var delgate : AddGroceryItemSaveDelegate?
    
    
    @IBOutlet var groceryItemText :UITextField!
    @IBAction func saveButtonPresse (_ sender : Any){
        
        let addGroceyItem = GroceryItem()
        addGroceyItem.itemTitle = groceryItemText.text!
        self.delgate?.addGroceyItemSave(aGIS: addGroceyItem)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func closeButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
