//
//  Decoder.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 05/09/2022.
//

//import SwiftUI
//
//func decode(file: String) -> [MeetingLocation] {
//    
//    
//    //
//    guard let url = Bundle.main.url(forResource: file, withExtension: nil) else{
//        fatalError("Can't Locate The File")
//    }
//    //
//    
//    guard let data = try? Data(contentsOf: url) else {
//        fatalError("Can't Load Data")
//    }
//    
//    let decoder = JSONDecoder()
//    
//    guard let decodedData = try? decoder.decode([MeetingLocation].self, from: data)  else {
//        fatalError("Can't Decode The File")
//    }
//    
//    return decodedData
//    
//}

