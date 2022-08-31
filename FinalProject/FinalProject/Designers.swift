//
//  Designers.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct Designers: View {
    var body: some View {
        
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
                
           
                    
                    
                    
                    
                    
                    
                    
                    
                    
      
                
              
            HStack{
                Spacer()
                
                Button {
                    Spacer()
                } label: {
                    Image("cart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }

                
            }
            
                HStack{
                    Button {
                        Spacer()
                    } label: {
                        Text("Developers")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            .foregroundColor(Color(red: 0.51, green: 0.509, blue: 0.527))
                        
                        
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
                           
                        
                            .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                            
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
                            Image("ola")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Ola Soqar")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 191$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("ai")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("ps")
                                
                                    .resizable()
                                
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                            }
                          
                            Spacer()
                            
                            Button {
                                Spacer()
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                                    .padding()
                                    .font(.system(size: 25))
                            }

                            
                        }
                        .frame(width: 370, height: 120)
                        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
                        .cornerRadius(10)
                            .padding()
                            
                        
                        
                        
                        
                        
                        HStack{
                            Image("osama")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Osama")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 242$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("blender")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("xd")
                                
                                    .resizable()
                                
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                            }
                          
                            Spacer()
                            
                            Button {
                                Spacer()
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                                    .padding()
                                    .font(.system(size: 25))
                            }

                            
                        }
                        .frame(width: 370, height: 120)
                        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
                        .cornerRadius(10)
                            .padding()
                        
                        
                        
                        
                        
                        
                        HStack{
                            Image("mohammed")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Mohammed Al-Mosawi")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 147$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("blender")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("id")
                                
                                    .resizable()
                                
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                            }
                          
                            Spacer()
                            
                            Button {
                                Spacer()
                            } label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(Color(red: -0.195, green: 0.469, blue: 1.036))
                                    .padding()
                                    .font(.system(size: 25))
                            }

                            
                        }
                        .frame(width: 370, height: 120)
                        .background(Color(red: 0.894, green: 0.894, blue: 0.894))
                        .cornerRadius(10)
                            .padding()
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
            }
            
            
            
          
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}

struct Designers_Previews: PreviewProvider {
    static var previews: some View {
        Designers()
    }
}
