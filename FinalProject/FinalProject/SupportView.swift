//
//  SupportView.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI

struct SupportView: View {
    @State var nameOfCard = ""
    @State var cardNumber = ""
    @State var expiringDate = ""
    @State var CVVandCVC = ""
    
    
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            
            
            
            VStack{
                Spacer()
                Image("card")
                    .resizable()
                    .scaleEffect()
                    .frame(width: 250, height: 250)
                
                Spacer()
                
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
                
                TextField("Expiring Date *", text: $expiringDate)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
                
                
                TextField("CVV/CVC *", text: $CVVandCVC)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
       Spacer()
            }
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
