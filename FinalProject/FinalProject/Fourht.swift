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
            VStack(alignment: .center){
                
           
                    
                    
                    
                    
                    
                    
                    
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
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 150$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
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
                            Image("bashaier")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Bashaier Al-Mushaileh")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 173$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("react")
                                
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
                            Image("omar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Omar Al-Ibrahim")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 185$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("django")
                                
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
                            Image("noor")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Noor Al-Habib")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 182$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("php")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("js")
                                
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
                            Image("zahrah")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Zahrah Ahmed")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 150$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("objc")
                                
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
                            Image("somou")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .padding()
                            VStack{
                                
                            Text("Somou Al-Oun")
                                .frame(width: 170, height: 20)
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                            
                                
                            Text("Starts from 150$")
                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .frame(width: 150, height: 30)
                            }
                            
                            VStack{
                                Image("swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                                    .cornerRadius(10)
                                Image("java")
                                
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

struct Fourht_Previews: PreviewProvider {
    static var previews: some View {
        Fourht()
    }
}
