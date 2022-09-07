//
//  PhotographerModel.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import Foundation

struct Photographer: Identifiable, Hashable, Equatable{
    let id = UUID()
    var name: String
    var image: String
    var price: Double
    var app: String
    

    
}

let Photographers = [

    Photographer(name: "Abdulrahman", image: "abdulrahman", price: 250.0, app: "iPhonecamera"),
    Photographer(name: "Hussain", image: "hussain", price: 275.0, app: "iPhonecamera"),
    Photographer(name: "Hassan", image: "hassan", price: 282.0, app: "sonycamera")

    
    
]
