//
//  CartEnv.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import Foundation



class CartEnv: ObservableObject{
    @Published var cartPersons: [Person] = []
    @Published var cartPhotographer: [Photographer] = []
    @Published var cartDesigner: [Designer] = []
    @Published var estTotal: Double = 0.0
    
    
    func addPerson(Person: Person){
        cartPersons.append(Person)
    }
    
    func addPhotographer(Photographer: Photographer){
        cartPhotographer.append(Photographer)
    }
    
    func removePerson(at IndexSet: IndexSet){
        cartPersons.remove(atOffsets: IndexSet)
    }
    
    func removePhotographer(at IndexSet: IndexSet){
        cartPhotographer.remove(atOffsets: IndexSet)
    }
    
    
    
    
    func addDesigner(Designer: Designer){
        cartDesigner.append(Designer)
    }
    
    
    func removeDesigner(at IndexSet: IndexSet){
        cartDesigner.remove(atOffsets: IndexSet)
    }
    
    func getTotal() {
        for price in cartDesigner{
            estTotal += price.price
        }
        for price in cartPhotographer{
            estTotal += price.price
            
            
            
        }
        
        for price in cartPersons{
            estTotal += price.price
        }
    }
}
