//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool = true
    
    init (firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom (service: PizzaDeliveryService) -> Bool {
        if self.isHungry && service.isInRange(destination: self.home){
            self.isHungry = false
            return true
        }
        return false
    }
    
}




