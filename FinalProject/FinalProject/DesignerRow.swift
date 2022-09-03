//
//  DesignerRow.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import SwiftUI

struct DesignerRow: View {
    @EnvironmentObject var cartEnv: CartEnv
    var Designer: Designer
    var body: some View {
        
        VStack(alignment: .center){
            
            
            HStack(spacing: -10){
                Image(Designer.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            
              
            VStack{
                
                Text(Designer.name)
                .frame(width: 170, height: 20)
                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
            
                
                Text("From \(Designer.price, specifier: "%.2f") KD")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 30)
            }
            
            HStack{
                Image(Designer.app)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                
            
          
            
            Button {
                cartEnv.addDesigner(Designer: Designer)
            } label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                    .font(.system(size: 25))

            }

            }
        }         .padding()
        .frame(height: 120)
        .background((Color.white))
            
        .cornerRadius(10)
   
        
    }    }
}

struct DesignerRow_Previews: PreviewProvider {
    static var previews: some View {
        DesignerRow(Designer: Designers [0])
            .environmentObject(CartEnv())
    }
}
