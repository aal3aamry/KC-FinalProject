//
//  DesignerModel.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import Foundation

struct Designer: Identifiable, Hashable, Equatable{
    let id = UUID()
    var name: String
    var image: String
    var price: Double
    var app: String
    

    
}

let Designers = [

    Designer(name: "Osama", image: "osama", price: 277.0, app: "xd"),
    Designer(name: "Mohammed", image: "mohammed", price: 202.0, app: "blender"),
    Designer(name: "Ola", image: "ola", price: 254.0, app: "ps")

    
    
]



