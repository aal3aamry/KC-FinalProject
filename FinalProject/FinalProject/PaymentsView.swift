//
//  PaymentsView.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI
import LocalAuthentication
struct PaymentsView: View {
    
    @State private var isUnlocked1 = false
    
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
                    VStack{
                    
                  
                       
                                if isUnlocked1 {
                                    
                                    ZStack{
                                        (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
                                        
                                        
                                        
                                        
                                        VStack{
                                            
                                            Image("card")
                                                .resizable()
                                            
                                                .scaleEffect()
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    
                                }else{
                                    
                                 
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
            
           
            
            
                    }.onAppear(perform: authenticate)
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
                    isUnlocked1 = true
                    
                }else{
                    //
                }
            
                }
            }
            
    }
    }
    
    











struct PaymentsView_Previews: PreviewProvider {
    
    static var previews: some View {
        PaymentsView()
    }
}
