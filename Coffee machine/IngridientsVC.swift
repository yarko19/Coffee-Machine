//
//  IngridientsVC.swift
//  Coffee machine
//
//  Created by Yaroslav Koniukvoh on 12.04.2020.
//  Copyright © 2020 Yaroslav Koniukvoh. All rights reserved.
//

import UIKit

class IngridientsVC: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var coffeeMachine: CoffeeMachine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButton(_ sender: UIBarButtonItem) {
        _ = self.navigationController?.popViewController(animated: true)
    }    
    
    @IBAction func addIngridients(_ sender: UIButton) {
        var status = ""
        if sender.tag == 1 {
            status = coffeeMachine.addWater()
        }
        else if sender.tag == 2 {
            status = coffeeMachine.addBeans()
        }
        else if sender.tag == 3 {
            status = coffeeMachine.addMilk()
        }
        textLabel?.text = status
    }
    
}
