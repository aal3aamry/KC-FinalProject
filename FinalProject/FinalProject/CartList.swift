//
//  CartList.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import SwiftUI
import UserNotifications
struct CartList: View {
    @EnvironmentObject var cartEnv: CartEnv
    @State var isAlertPresented : Bool = false

    @State var estPrice: Double
    
    
    @State private var animate = false

    
    var body: some View {
       
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
                
                
                
                
                
                
//                Button(action: {
//                    
//                    self.send()
//                })
//                {
//                    Text("Send Notiification")
//                }
//                
                
                
                
                
                
                
                
                
        List{
            ForEach(cartEnv.cartPersons){ Person in
                PersonRow(Person: Person)
            }
            .onDelete(perform: { IndexSet in
                cartEnv.removePerson(at: IndexSet)
            })
            ForEach(cartEnv.cartPhotographer){ Photographer in
                PhotographerRow(Photographer: Photographer)
            }
                    .onDelete(perform: { IndexSet in
                        cartEnv.removePhotographer(at: IndexSet)
          
                    
                    })
                              ForEach(cartEnv.cartDesigner){ Designer in
                                  DesignerRow(Designer: Designer)
                              }
            
                              .onDelete(perform: { IndexSet in
                                  cartEnv.removeDesigner(at: IndexSet)

        }
                                        
            
            
           
              
            )}
            
                Spacer()
                Button {
                    
                    cartEnv.getTotal()
                    isAlertPresented.toggle()
                    self.send()

                    
                } label: {
                    
                    Text("Checkout")
                    .multilineTextAlignment(.center)
                
                    .frame(width: 310, height: 30)
                
                    .padding()
                    
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                 
                    .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
                    
                    
                    .alert(isPresented: $isAlertPresented) {
                        Alert(title: Text("Thank You For Using MT"), message: Text("Est Price is\(cartEnv.estTotal, specifier: " %.2f")"), dismissButton: .default(Text(("Okay"))))
                        //Text("From \(Person.price, specifier: //"%.2f") KD")
                    }
                }.padding()
                    .shadow(color: .gray.opacity(0.7), radius: 8)
            
                

            }
            .frame(height: 760)
    
            
            
        }
        
    
    }
  
    func send(){
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { _,_ in ()
            
        }
        
        let content = UNMutableNotificationContent()
        content.title = "My Team"
        content.body = "Payment completed successfully, please wait while we contact your team members and let them know"
        
        
        
        let open = UNNotificationAction(identifier: "open", title: "Open", options: .foreground)
        
        let cancel = UNNotificationAction(identifier: "cancel", title: "Cancel", options: .foreground)
        
        let categories = UNNotificationCategory(identifier: "action", actions: [open,cancel], intentIdentifiers: [])
        
        
        UNUserNotificationCenter.current().setNotificationCategories([categories])
        
        content.categoryIdentifier = "action"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let req = UNNotificationRequest(identifier: "req", content: content, trigger: trigger)
        
        
        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil )
        
        
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList(estPrice: 0.0)
            .environmentObject(CartEnv())
    }
}
