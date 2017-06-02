//
// Created by Ione Axelrod on 6/1/17.
// Copyright (c) 2017 ioneaxelrod. All rights reserved.
//

import Foundation



class Pizza {
    
    let orderNumber:Int
    let size:Int //inches
    let sauce:String
    let toppings:[String]
    let pizzaType:String
    
    private init(builder: PizzaBuilder) {
        self.orderNumber = builder.orderNumber
        self.size = builder.size
        self.sauce = builder.sauce
        self.toppings = builder.toppings
        self.pizzaType = builder.pizzaType
    }
    
    func description() -> String {
        var result = "\(self.orderNumber) is a \(size) inch \(pizzaType) style pizza with \(sauce) sauce and"
        for item in toppings {
            result = result.appending(" \(item) and")
        }
        result = String(result.characters.dropLast(4))
        return result
    }
    
    
    public class PizzaBuilder {
        var orderNumber:Int = 0
        var size:Int //inches
        var sauce:String
        var toppings:[String]
        var pizzaType:String
        
        init() {
            orderNumber += 1
            size = 6
            sauce = "tomato"
            toppings = ["cheese"]
            pizzaType = "pan"
        }
        
        public func pizzaSize(inches: Int) -> PizzaBuilder {
            self.size = inches
            return self
        }
    
        public func pizzaSauce(sauce: String) -> PizzaBuilder {
            self.sauce = sauce
            return self
        }
        
        public func pizzaToppings(toppings: [String]) -> PizzaBuilder {
            self.toppings.append(contentsOf: toppings)
            return self
        }
        
        public func addTopping(topping:String) -> PizzaBuilder {
            self.toppings.append(topping)
            return self
        }
        
        public func pizzaType(type: String) -> PizzaBuilder {
            self.pizzaType = type
            return self
        }
        
        public func build() -> Pizza {
            return Pizza(builder: self)
        }
        
    
    
    }
    
}
