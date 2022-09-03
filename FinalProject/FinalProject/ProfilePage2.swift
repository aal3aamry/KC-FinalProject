//
//  ProfilePage2.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI

struct ProfilePage2: View {

    @Binding var FirstName: String

    var body: some View {
        ZStack{
            
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            
            
            
            
            VStack{
                Spacer()
                Text(" Welcome  \(self.FirstName )  👋🏼")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                    .multilineTextAlignment(.center)
                    .frame(width: 380, height: 120)
                    .foregroundColor(.gray)
         
                Spacer()
                
                NavigationLink(destination: PaymentsView()){
                HStack{
                 
                    
                    Image(systemName: "creditcard")
                        .multilineTextAlignment(.center)
                    
                
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                        .padding()
                  
             
                    Text("Payments")
                        .multilineTextAlignment(.center)
                    
                        
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                    
                     Spacer()
                    
                    
                    
                }.navigationTitle(Text("Payments"))
                }
                
                
                Divider()
                HStack{
                    Image(systemName: "info.circle")
                        .multilineTextAlignment(.center)
                    
                
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                        .padding()
                  
                    
                    Text("Support")
                        .multilineTextAlignment(.center)
                    
                
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                    
                     Spacer()
                }
                Divider()
                HStack{
                    Image(systemName: "map")
                        .multilineTextAlignment(.center)
                    
                
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                        .padding()
                  
                    
                    Text("Suggested Places")
                        .multilineTextAlignment(.center)
                    
                
                    
                
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:18))
                        .foregroundColor(Color.black)
                    
                     Spacer()
                }
                
                Spacer()
            }.frame(height: 1000)
                
                    .background( (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea())
                
                    .navigationTitle(Text("Dashboard"))
                    .navigationBarTitleDisplayMode(.inline)
            
            
            
            
            
            
            
            
            
            
            
            
            
        
        
}
    }
}

struct ProfilePage2_Previews: PreviewProvider {
    
    @State static var FirstName: String = ""
    @State static var image: String = ""

    static var previews: some View {
        ProfilePage2(FirstName: $FirstName)
    }
}
