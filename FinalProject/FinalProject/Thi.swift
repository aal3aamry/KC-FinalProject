//
//  Thi.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 29/08/2022.
//

import SwiftUI

struct Thi: View {
    
    @State var FirstName = ""
    @State var LastName = ""
    @State var PhoneNumber = ""
    @State var UserName = ""
    @State var BusinessEmail = ""
    @State var Password = ""
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
        VStack{
            Spacer()
            
            VStack{
        Text("Start With a 90 Days Trail of My Team")
                .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                .multilineTextAlignment(.center)
                .frame(width: 380, height: 100)
                .padding(.all)

            TextField("First Name *", text: $FirstName)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
            
            TextField("Last Name *", text: $LastName)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
            
            TextField("Phone Number *", text: $PhoneNumber)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
            
            TextField("Username *", text: $UserName)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
            
            TextField("Business Email *", text: $BusinessEmail)
                .foregroundColor(.black)
                .padding(.all)
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
            
            SecureField("Password *", text: $Password)
                .foregroundColor(.black)
                .padding(.all)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)

            }
            Spacer()
            
            Button {
                Spacer()
            } label: {
                Text("Start My Free Trail")
                    .multilineTextAlignment(.center)
                
                    .frame(width: 310, height: 30)
                
                    .padding()
                    
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                 
                    .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
            }
            
            
            Text("*No Credit Card Required")
                .font(Font.custom("NeufileGrotesk-SemiBold",size:15))
            
            
            Spacer()
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
        }
    }
}

struct Thi_Previews: PreviewProvider {
    static var previews: some View {
        Thi()
    }
}
