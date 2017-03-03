//
//  AddGroceryCatagoryViewController.swift
//  GroceryAppSwift
//
//  Created by Sreekala Santhakumari on 2/24/17.
//  Copyright © 2017 Klas. All rights reserved.
//

import UIKit

protocol AddGroceryCategorySaveDelegate  {
    
    func addGrocerycategorySave(aGCS : GroceryCategory)
}

class AddGroceryCatagoryViewController: UIViewController {
    
    var delegate : AddGroceryCategorySaveDelegate?
    
    @IBOutlet var groceryCategoryText: UITextField!
    @IBAction func addGroceryCategoryButton(_ sender: Any) {
        
        let addGroceryCategory = GroceryCategory()
        addGroceryCategory.categorytitle = groceryCategoryText.text!
        self.delegate?.addGrocerycategorySave(aGCS: addGroceryCategory)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButtonPressed (_sender : Any){
        
     dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    
}
