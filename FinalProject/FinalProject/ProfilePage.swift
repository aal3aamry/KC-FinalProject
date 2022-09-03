//
//  ProfilePage.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI

struct ProfilePage: View {
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker:Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    
    @State var StartinPrice = ""
    @State var BusinessEmail = ""
    //
    @State var showName:Bool = false
    @State var FirstName:String = ""
//
    @State var LastName = ""
    @State var UserName = ""
    @State var PhoneNumber = ""
@State var Password = ""
     
    var body: some View {
        NavigationView{
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
        
            VStack{
         
                HStack{
                Spacer()
                Button {
                    self.showSheet = true
                } label: {
                    Image(uiImage: image ?? UIImage(named: "pfp")!)
                        .resizable()
                    
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 150, height: 150)
                   


                }.padding()
                    .actionSheet(isPresented: $showSheet) {
                        ActionSheet(title: Text("Select Photo"),
                                    message: Text("choose")
                                    ,buttons: [
                    
                    .default(Text("Camera")){
                        self.showImagePicker = true
                        self.sourceType = .camera

                    },
                    
                        .default(Text("Photo Library")){
                            self.showImagePicker = true

                            self.sourceType = .photoLibrary
                        },
                    .cancel()
                ])
            
                    }
                
                Spacer()
            }
            
            
            Spacer()
                
                TextField("First Name *", text: $FirstName, onCommit: {
                    self.showName = true
                })
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
                .keyboardType(.numberPad)
                
                
                TextField("UserName *", text: $UserName)
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
                .multilineTextAlignment(.leading)
                .frame(width: 340, height: 65)
                .background(Color.white)
                .cornerRadius(10)
                
            
     
              
                    
                    
                NavigationLink(destination: ProfilePage2(FirstName: $FirstName)){
                    Text("Save & Continue")
                        .multilineTextAlignment(.center)
                    
                        .frame(width: 310, height: 30)
                    
                        .padding()
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                     
                        .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .cornerRadius(10)
                    }
                Spacer()
                }
            
                /*
                Button {
                    
                    
                } label: {
                    Text("Save & Continue")
                        .multilineTextAlignment(.center)
                    
                        .frame(width: 310, height: 30)
                    
                        .padding()
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                     
                        .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .cornerRadius(10)
                    
                    
                }
                
                */
            
            
          
            
        }.sheet(isPresented: $showImagePicker){
            
            ImagePicker(image: $image, isShown: self.$showImagePicker, sourceType: self.sourceType)
                .background((Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea())
        }.navigationBarTitle(Text("Profile"))
                    .navigationBarTitleDisplayMode(.inline)
            
            }.background((Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea())
    }
}


struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
