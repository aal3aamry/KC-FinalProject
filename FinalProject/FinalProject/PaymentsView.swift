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
    
    @State var nameOfCard = ""
    @State var cardNumber = ""
//    @State var expiringDate = ""
    @State var CVVandCVC = ""
    
    @State var expiringDate: Date = Calendar.current.date(byAdding: DateComponents(year: -10), to: Date()) ?? Date()
//    @State private var date = Date()
    
    //
    
    @State var isAlertPresented : Bool = false
    
    
    
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
                                                .frame(width: 250, height: 250)
                                                .padding(50)
                                            
                                            
                                            TextField("Name Of Card *", text: $nameOfCard)
                                            .foregroundColor(.black)
                                            .padding(.all)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 340, height: 65)
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            
                                            TextField("Card Number *", text: $cardNumber)
                                            .foregroundColor(.black)
                                            .padding(.all)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 340, height: 65)
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            .keyboardType(.numberPad)
                                            .onReceive(cardNumber.publisher.collect()) {
                                                    self.cardNumber = String($0.prefix(16))
                                                }
                                           
                                            HStack{
                                  
                                     
                                            
                                            
                                                Text("Expiring Date *")
                                                    .multilineTextAlignment(.trailing)

                                                    .foregroundColor(.gray.opacity(0.5))
                                                .padding()
                                                DatePicker(selection: $expiringDate, displayedComponents: .date){}
                                                
                                                    .padding()
                                               
                                                
                                  
                                            
                                           
                                                
                                            }  .foregroundColor(.gray)
                                            
                                            
                                                .frame(width: 340, height: 65)

                                                .background(Color.white)

                                                .cornerRadius(10)
                                            
                                            
                                            
                                           
                                            
                                            
                            //                DatePicker("Enter Expiring Date", selection: $date)
                            //
                            //                    .datePickerStyle(GraphicalDatePickerStyle())
                            //                    .labelsHidden()
                            //                    .frame(maxHeight: 400 )
                                            
                                            
                                            TextField("CVV/CVC *", text: $CVVandCVC)
                                            .foregroundColor(.black)
                                            .padding(.all)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: 340, height: 65)
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            .keyboardType(.numberPad)
                                            .onReceive(CVVandCVC.publisher.collect()) {
                                                    self.CVVandCVC = String($0.prefix(3))
                                                }
                                    
                                            Button {
                                      
                                                isAlertPresented.toggle()
                                                
                                                
                                            } label: {
                                                Text("Save")
                                                    .multilineTextAlignment(.center)
                                                
                                                    .frame(width: 310, height: 30)
                                                
                                                    .padding()
                                                    
                                                    .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                                                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                                                 
                                                    .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                                                    
                                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                                    .cornerRadius(10)
                                                
                                                
                                                .alert(isPresented: $isAlertPresented) {
                                                    Alert(title: Text("Credit Card Added Successfully ✅"), message: Text("You Can Now Start Choosing Your Team Members"), dismissButton: .default(Text("Okay")))
                                                    
                                                    //Text("From \(Person.price, specifier: //"%.2f") KD")
                                                }
                                            }.shadow(color: .gray.opacity(0.7), radius: 8)
                                            
                                            
                                                .padding(50)
                                            
                                                
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
