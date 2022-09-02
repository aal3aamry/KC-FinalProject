//
//  PersonsList.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct PersonsList: View {
    @State var sheetPresented = false
    @State var currentTab: Int = 0
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
       
         
          
            

                
                
                
                    
            VStack{
                
                
                
                
                    
                    
                
                HStack{
                    Spacer()
                Button {
                sheetPresented = true
                }
            
            label: {
                    Image("cart")
                          .resizable()
                         .scaledToFit()
                          .frame(width: 100, height: 100)
                }
            .sheet(isPresented: $sheetPresented) {
                CartList(estPrice: 0.0)
            }
                    
                }
                HStack{
                    Spacer()
                    
               
                    

                        
                    
                   
                
                TabView(selection: self.$currentTab){
                    photographers().tag(0)
                DesList().tag(1)
                    DevList().tag(2)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                    



            }
                    
            
            .background((Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea())
                
            
        }
        }
        }
        



struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList()
            .environmentObject(CartEnv())
    }
}
}


