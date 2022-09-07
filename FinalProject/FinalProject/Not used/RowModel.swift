//
//  RowModel.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 30/08/2022.
//

import Foundation
import SwiftUI

struct RowModel: Identifiable{
    let id = UUID()
    
    let RowName: String
    let RowPrice: String
    let RowPic: String
}

var MyRow = [
    RowModel(RowName: "Adnan", RowPrice: "150$", RowPic: "adnan"),
    RowModel(RowName: "Bashaier", RowPrice: "160$", RowPic: "bashaier"),
    RowModel(RowName: "Hassan", RowPrice: "170$", RowPic: "hassan"),
    RowModel(RowName: "Hussain", RowPrice: "180$", RowPic: "hussain"),
    RowModel(RowName: "Mohammed", RowPrice: "190$", RowPic: "mohammed")

]

