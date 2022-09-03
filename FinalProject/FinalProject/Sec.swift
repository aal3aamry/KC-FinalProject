//
//  Sec.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 29/08/2022.
//

import SwiftUI
import LocalAuthentication
struct Sec: View {
    @State var UserName = ""
    @State var Password = ""
    @State private var isUnlocked = false
    @State var fullscreenPresented = false
    @State var fullscreenPresented1 = false
    var body: some View {
        
        ZStack{
            
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            
           
                
            NavigationView{
           
                VStack{
                    
                    if      isUnlocked {
                        
                        
                        
                        
                    }
                    
                    else{
                        
                     
                        
                        
                        
                        
                        
                        
                        
                    
                Text("Hello Again")
                    
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                        .multilineTextAlignment(.center)
                        .frame(width: 380, height: 120)
                    
                    
                    Text("Welcome back you’ve been missed!")
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                        .multilineTextAlignment(.center)
                        .frame(width: 380, height: 80)

                    
                    Spacer()
                    
                    TextField("Enter Username", text: $UserName)
                        .foregroundColor(.black)
                        .padding(.all)
                        .multilineTextAlignment(.leading)
                        .frame(width: 340, height: 65)
                        .background(Color.white)
                        .cornerRadius(10)
                    

                    SecureField("Password", text: $Password)
                        .foregroundColor(.black)
                        .padding(.all)
                        .frame(width: 340, height: 65)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    Spacer()
                
                        Button( action:{ fullscreenPresented.toggle()
                        })
                        {
                            Text("Sign In")
                                .multilineTextAlignment(.center)
                            
                                .frame(width: 310, height: 30)
                            
                                .padding()
                                
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                             
                                .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                                
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .cornerRadius(10)
                        }
                       
                    
             

                    
                    Text("Or")
                    
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                        .multilineTextAlignment(.center)
                        .frame(width: 380, height: 80)
                    
                 
              
                        /*Button {
                            Spacer()
                        } label: {
                            Text("   Continue with Apple")
                         
                                .multilineTextAlignment(.center)
                            
                                .frame(width: 310, height: 30)
                            
                                .padding()
                                
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                             
                                .background(Color.black)
                                
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .cornerRadius(10)
                        }
                            */
                    
                        //Button("test"){
                //    perform: authenticate()
                  //  }
                        
                        VStack{
                        Button( action:{ fullscreenPresented1.toggle()
                        })
                        {
                            Image(systemName: "faceid")
                                .font(.system(size: 80))
                                .foregroundColor((Color(red: 0.182, green: 0.256, blue: 0.311)))
                        
                        }
                        
                        }.onAppear(perform: authenticate)

                       
                
                   
                    
                        
                    
                        Spacer()
                    
                        /*Button {
                            Spacer()
                        } label: {
                        
                            Text("    Continue with Google")
                            
                                .background(    Image("google")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30))
                            
                                .multilineTextAlignment(.center)
                            
                                .frame(width: 310, height: 30)
                            
                                .padding()
                                
                                .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                             
                                .background(Color.black)
                                
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .cornerRadius(10)
                            */
                            
                        }//.onAppear(perform: authenticate)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
     
                }.frame(width: 500)
                
                .background((Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea())
            
                
                
                
                
                .fullScreenCover(isPresented: $fullscreenPresented, content:{ TabHome()
                    
                    .fullScreenCover(isPresented: $fullscreenPresented1, content:{ TabHome()
                        })
                }
                                 
                
        )}
        }
        }
            
    func authenticate(){
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        {
            let reason = "We need to verify your identity"
            
              context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason){
                success, authenticationError in
                if success {
                    isUnlocked = true
                    
                }else{
                    //
                }
            
                }
            }
            
    }
        }
    


struct Sec_Previews: PreviewProvider {
    static var previews: some View {
        Sec()
    }
}

