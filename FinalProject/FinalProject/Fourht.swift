//
//  Fourht.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 29/08/2022.
//

import SwiftUI

struct Fourht: View {
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
                
                
            HStack{
                Spacer()
                Image("cart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            
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
                
                
                Spacer()
                
                
               
                
                
                
                ScrollView{
                    
                    VStack{
                       
                        HStack{
                            Image("adnan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                            Text("Adnan Al-Fadhli")
                                .frame(width: 130, height: 20)
                                .padding()
                            Text("Starts from 150$")
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("fflat")
                                
                                    .resizable()
                                
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                            }
                          
                            Spacer()
                            
                            
                            Image(systemName: "plus.circle")
                                .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                                .padding()
                                .font(.system(size: 25))
                        }
                        .frame(width: 380, height: 120)
                        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
                        .cornerRadius(10)
                            .padding()
                            
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
    }
}

struct Fourht_Previews: PreviewProvider {
    static var previews: some View {
        Fourht()
    }
}
