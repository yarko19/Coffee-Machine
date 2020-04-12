//
//  ViewController.swift
//  Coffee machine
//
//  Created by Yaroslav Koniukvoh on 12.04.2020.
//  Copyright © 2020 Yaroslav Koniukvoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    let coffeeMachine = CoffeeMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ingridientsVC = segue.destination as? IngridientsVC {
            ingridientsVC.coffeeMachine = coffeeMachine
        }
    }
    
    @IBAction func drinks(_ sender: UIButton) {
         var status = ""
               if sender.tag == 1 {
               status = coffeeMachine.makeCoffee()
           }
               else if sender.tag == 2 {
               status = coffeeMachine.makeEspresso()
           }
               else if sender.tag == 3 {
               status = coffeeMachine.makeCapuchino()
           }
            textLabel?.text = status
    }
}

