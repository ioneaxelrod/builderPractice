//
//  ViewController.swift
//  builderPractice
//
//  Created by Ione Axelrod on 6/1/17.
//  Copyright (c) 2017 ioneaxelrod. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

    


    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
        let newPizza = Pizza.PizzaBuilder()
                            .pizzaType(type: "Chicago")
                            .pizzaToppings(toppings: ["pepperoni", "anchovies"])
                            .pizzaSauce(sauce: "white")
                            .pizzaSize(inches: 9)
                            .build()
        
        let newerPizza = Pizza.PizzaBuilder()
                              .pizzaType(type: "Calfornia")
                              .pizzaToppings(toppings: ["avocado", "kale"])
                              .pizzaSauce(sauce: "pesto")
                              .pizzaSize(inches: 12)
                              .build()
    
        print(newPizza.description())
        print(newerPizza.description())
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }



}
