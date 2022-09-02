//
//  CartList.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 01/09/2022.
//

import SwiftUI

struct CartList: View {
    @EnvironmentObject var cartEnv: CartEnv
    @State var isAlertPresented : Bool = false

    @State var estPrice: Double
    var body: some View {
       
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
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
                
                Button {
                    cartEnv.getTotal()
                    isAlertPresented.toggle()
                    
                    
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
                        Alert(title: Text("Thank You For Using MT"), message: Text("Est Price is\(cartEnv.estTotal, specifier: " %.2f")"), dismissButton: .default(Text("اوكي")))
                        //Text("From \(Person.price, specifier: //"%.2f") KD")
                    }
                }
                Spacer()

            }.frame(height: 700)
        }
    }
  
    
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList(estPrice: 0.0)
            .environmentObject(CartEnv())
    }
}
