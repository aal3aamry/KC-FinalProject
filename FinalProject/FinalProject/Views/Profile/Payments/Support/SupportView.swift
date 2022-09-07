//
//  SupportView.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI

struct SupportView: View {
  
    @State private var animate = false

    
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            VStack{
                Spacer()
                Image("book")
                    .resizable()
                    .scaleEffect()
                
                    .padding(60)
                
                
                    .frame(width: animate ? 500: 300, height: animate ? 500 : 300)
                  
                      .onTapGesture {
                          withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0.9)){
                              
                              animate.toggle()
                          }
                          
                     
                      }
                
                Spacer()
                
                Link("Visit Our Website", destination: URL(string: "https://dolomite-harmless-factory.glitch.me")!)
                    .multilineTextAlignment(.center)
                
                    .frame(width: 310, height: 30)
                
                    .padding()
                    
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                 
                    .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                    
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .cornerRadius(10)
                
                    .padding(20)
            }
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
