//
//  PersonRow.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct PersonRow: View {
    var Person: Person
    var body: some View {
        
        
  
        VStack(alignment: .center){
        HStack{
            Image(Person.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
                .padding()
            VStack{
                
                Text(Person.name)
                .frame(width: 170, height: 20)
                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
            
                
                Text("\(Person.price, specifier: "%.2f") KD")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 30)
            }
            
            VStack{
                Image(Person.app)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                
            }
          
            
            Button {
                Spacer()
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                    .padding()
                    .font(.system(size: 25))

            }

            
        }
        .frame(width: 360, height: 120)
        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
        .cornerRadius(10)
            .padding()
        
    }
        
        
        //func PriceStr() -> String{
           // String(format: "%.2f KD", Person.price)
     //   }
}
}


struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(Person: Persons [0])
    }
}
