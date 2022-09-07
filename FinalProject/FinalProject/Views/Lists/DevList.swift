//
//  DevList.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import SwiftUI

struct DevList: View {
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
                HStack{
                    Button {
                        Spacer()
                    } label: {
                        Text("Developers")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                           
                        
                        
                            .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                            .multilineTextAlignment(.center)
                        
                            .padding()
                    }

                    
                    Divider()
                    
                    Button {
                        Spacer()
                    } label: {
                        Text("Designers")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                           
                        
                        
                            .foregroundColor(Color(red: 0.51, green: 0.509, blue: 0.527))
                            .multilineTextAlignment(.center)
                            .padding()
                    }

                    
                    Divider()

                    Button {
                        Spacer()
                    } label: {
                        Text("Photographers")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                           
                        
                        
                            .foregroundColor(Color(red: 0.51, green: 0.509, blue: 0.527))
                            .multilineTextAlignment(.center)
                            .padding()
                    }

                    
                    

                }
                .frame(width: 415, height: 50)
                .background((Color(red: 0.953, green: 0.953, blue: 0.953)))
        List(Persons){ Person in
           PersonRow(Person: Person)
                
          
         }
        
        .background((Color(red: 0.894, green: 0.894, blue: 0.894)))
        }
        }
    }
}

struct DevList_Previews: PreviewProvider {
    static var previews: some View {
        DevList()
    }
}
