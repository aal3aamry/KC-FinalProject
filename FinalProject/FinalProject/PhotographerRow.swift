//
//  PhotographerRow.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import SwiftUI

struct PhotographerRow: View {
    @EnvironmentObject var cartEnv: CartEnv
    var Photographer: Photographer
    var body: some View {
        VStack(alignment: .center){
            
            
            HStack(spacing: -10){
                Image(Photographer.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
              
            VStack{
                
                Text(Photographer.name)
                .frame(width: 170, height: 20)
                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
            
                
                Text("From \(Photographer.price, specifier: "%.2f") KD")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 30)
            }
            
            HStack{
                Image(Photographer.app)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                
            
          
            
            Button {
                cartEnv.addPhotographer(Photographer: Photographer)
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                    .font(.system(size: 25))

            }

            }
        }         .padding()
        .frame(height: 120)
        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
            
        .cornerRadius(10)
   
        
    }
        
        
        //func PriceStr() -> String{
           // String(format: "%.2f KD", Person.price)
     //   }
}
}
    


struct PhotographerRow_Previews: PreviewProvider {
    static var previews: some View {
        PhotographerRow(Photographer: Photographers [0])
            .environmentObject(CartEnv())

    }
}
