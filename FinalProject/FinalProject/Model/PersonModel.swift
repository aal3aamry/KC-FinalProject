//
//  PersonModel.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import Foundation

struct Person: Identifiable, Hashable, Equatable{
    let id = UUID()
    var name: String
    var image: String
    var price: Double
    var app: String
    

    
}

let Persons = [

    Person(name: "Adnan", image: "adnan", price: 150.0, app: "swift"),
    Person(name: "Bashaier", image: "bashaier", price: 163.0, app: "fflat"),
    Person(name: "Omar", image: "omar", price: 165.0, app: "django"),
    Person(name: "Noor", image: "noor", price: 145.0, app: "js"),
    Person(name: "Somou", image: "somou", price: 185.0, app: "java"),
    Person(name: "Zahrah", image: "zahrah", price: 210.0, app: "php"),

    
    Person(name: "Shaimaa", image: "shaimaa", price: 217.0, app: "objc"),
    
    Person(name: "Farah", image: "farah", price: 234.0, app: "python"),

   // Person(name: "Fajer", image: "fajer", price: 253,0, app: "c#")
    
]


