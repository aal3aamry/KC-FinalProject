//
//  JoinPage.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct JoinPage: View {
    
    @State private var showingConfirmation = false
    @State private var categoryName: String = "Category Name *"
    
        //
    
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker:Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    @State private var image: UIImage?
    
    
    
    @State var StartinPrice = ""
    @State var BusinessEmail = ""
    @State var FirstName = ""
    @State var LastName = ""
  
//
    
    @State var isAlertPresented : Bool = false
    
    
    
    var body: some View {
        
        
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            
            VStack{
                
                Spacer()
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
                    .shadow(color: .gray, radius: 10)
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

                
                        
               
                
                
               //
                
                
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
                 
                 
                VStack{
                    HStack{
                Text(categoryName)
                            .foregroundColor(.gray.opacity(0.6))
                        Spacer()

                        Image(systemName: "chevron.down.circle")
                            .foregroundColor(.gray.opacity(0.6))
                    }
                    
                    .onTapGesture {
                        showingConfirmation = true
                    }
                
                    .confirmationDialog("Choose One Of These Categorys", isPresented: $showingConfirmation)
                {
                    Button("Developer"){ categoryName = "Developer"}
                    Button("Designer"){ categoryName = "Designer"}
                    Button("Photographer"){ categoryName = "Photographer"}
                    
                  
                    }
                    
                }.foregroundColor(.black)
                    .padding(.all)
                    .multilineTextAlignment(.leading)
                    .frame(width: 340, height: 65)
                    .background(Color.white)
                    .cornerRadius(10)
                
                 TextField("Starting Price KD *", text: $StartinPrice)
                 .foregroundColor(.black)
                 .padding(.all)
                 .frame(width: 340, height: 65)
                 .background(Color.white)
                 .cornerRadius(10)
                 
                
                Button {
          
                    isAlertPresented.toggle()
                    
                    
                } label: {
                    
                    Text("Join Now!")
                        .multilineTextAlignment(.center)
                    
                        .frame(width: 310, height: 30)
                    
                        .padding(.all)
                        
                        .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                        .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                     
                        .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .cornerRadius(10)
                    
                    
                    .alert(isPresented: $isAlertPresented) {
                        Alert(title: Text("Thank You For Using MT"), message: Text("We Will Contact You Later After Verifying Your Info "), dismissButton: .default(Text("Okay")))
                        //Text("From \(Person.price, specifier: //"%.2f") KD")
                    }
                    
                    
                }.shadow(color: .gray.opacity(0.7), radius: 8)
                    .padding(30)
                
Spacer()
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
