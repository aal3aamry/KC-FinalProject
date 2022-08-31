//
//  JoinPage.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct JoinPage: View {
    
    @State private var showingConfirmation = false
    @State private var categoryName: String = "categoryName"
    
        //
    
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker:Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    var body: some View {
        
        
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            VStack{
                Text("Become Part Of Our Family By One Click!")
                    .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                    .multilineTextAlignment(.center)
                    .frame(width: 380, height: 80)
                
                
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

                
                        
                Text(categoryName)
                    .onTapGesture {
                        showingConfirmation = true
                    }
                
                    .confirmationDialog("Choose One Of These Categorys", isPresented: $showingConfirmation)
                {
                    Button("Developer"){ categoryName = "Developer"}
                    Button("Designer"){ categoryName = "Designer"}
                    Button("Photographer"){ categoryName = "Photographer"}
                    
                  
                    }
                
                
               //
                /*
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
                 
                 TextField("Business Email *", text: $BusinessEmail)
                 .foregroundColor(.black)
                 .padding(.all)
                 .multilineTextAlignment(.leading)
                 .frame(width: 340, height: 65)
                 .background(Color.white)
                 .cornerRadius(10)
                 
                 */
                
                    
                    
                
                /*
                 TextField("First Name *", text: $FirstName)
                 .foregroundColor(.black)
                 .padding(.all)
                 .multilineTextAlignment(.leading)
                 .frame(width: 340, height: 65)
                 .background(Color.white)
                 .cornerRadius(10)
                 */
                
            }
        }.sheet(isPresented: $showImagePicker){
            
            ImagePicker(image: $image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
}
}
struct JoinPage_Previews: PreviewProvider {
    static var previews: some View {
        JoinPage()
    }
}
