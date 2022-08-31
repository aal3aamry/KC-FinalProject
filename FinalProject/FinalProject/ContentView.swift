//
//  ContentView.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var test = ""
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            VStack{
                
            Image("bg1")
                .resizable()
                .scaledToFit()
                .frame(width: 380, height: 380)
                .cornerRadius(20)
                
           Spacer()
                Text("Gather Your Team Members At One Place!")
                .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                .multilineTextAlignment(.center)
                .frame(width: 380, height: 80)
Spacer()
                Divider()
                Spacer()
                Text("Exploer The Best Freelancers Worldwide")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:20))
                    .multilineTextAlignment(.center)

                    .frame(width: 380, height: 80)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Button {
                   
                    } label: {
                        HStack{
                            Spacer()
                            Text("Register")
                            
                                .multilineTextAlignment(.center)
                            
                                .frame(width: 140, height: 30)
                            
                                .padding()
                                
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                .foregroundColor(Color(red: 0.166, green: 0.256, blue: 0.316))
                             
                                .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                                
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                              

                            
                        }
                    }
                    
                    Button {
                        test = "1"
                    } label: {
                        HStack{
                            Spacer()
                            Text("Sign In")
                                .multilineTextAlignment(.center)
                            
                                .frame(width: 140, height: 30)
                            
                                .padding()
                                
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                             
                                .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                                
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                              

                            
                        }
                    }.padding()

                    
                    
                }
                
                Spacer()
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}








































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
