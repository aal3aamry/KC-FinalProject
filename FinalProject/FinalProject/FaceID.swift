//
//  FaceID.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 03/09/2022.
//
/*
import SwiftUI
import LocalAuthentication
struct FaceID: View {
  
    @State private var isUnlocked = false
    @State var fullscreenPresented = false
    var body: some View {
        
        
        VStack{
        if isUnlocked {
         
            fullscreenPresented.toggle()
            
            
        }
        
        else{
          
            
            //
        }
        
    }
        .onAppear(perform: authenticate)
        
        .fullScreenCover(isPresented: $fullscreenPresented, content:{ TabHome()
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
                         }
struct FaceID_Previews: PreviewProvider {
    static var previews: some View {
        FaceID()
    }
}*/
