//
//  SuggestedPlacesView.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 02/09/2022.
//

import SwiftUI
import MapKit




struct Location: Identifiable {
    
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    
    
}

struct SuggestedPlacesView: View {
    
    @State private var firstMap = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.3735, longitude: 47.9767), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    @State private var secondMap = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.3689, longitude: 47.9697), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    @State private var thirdMap = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.3413, longitude: 47.9383), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    @State private var fourthMap = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.3750, longitude: 47.9899), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    
    
    
    
    
    
    
    @State private var animate1 = false
    @State private var animate2 = false
    @State private var animate3 = false
    @State private var animate4 = false

    
    
    
    
    
    
    let locations = [
        
        Location(name: "Niu", coordinate: CLLocationCoordinate2D(latitude: 29.3735, longitude: 47.9767)),
        
        
        Location(name: "With Cafe", coordinate: CLLocationCoordinate2D(latitude: 29.3689, longitude: 47.9697))
    ]
    var body: some View {
        ZStack{
            (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
            
            
            
            VStack{
                
                
                ScrollView{
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //
                    
                    VStack{
                        
                        
                        
                        
                        Text("Niu Collaborative Community")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 380, height: 80)
                        
                            .padding()
                        
                        HStack{
                            Map(coordinateRegion: $firstMap, annotationItems: locations)
                            {
                                location in
                                MapMarker(coordinate: CLLocationCoordinate2D(latitude: 29.3735, longitude: 47.9767))
                            }
                        }.frame(width: 300, height: animate1 ? 500 : 300)
                        
                            .onTapGesture {
                                withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0.9)){
                                    
                                    animate1.toggle()
                                }
                                
                           
                            }
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                            .padding()
                        
                        
                        Link("Go There", destination: URL( string: "https://goo.gl/maps/kXqpyojFa79Vqw958")!)
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 310, height: 30)
                        
                            .padding(.all)
                        
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        
                            .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.7), radius: 8)
                            .padding(30)
                    }
                    
                    Divider()
                    
                    VStack{
                        
                        Text("With Cafe")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 380, height: 80)
                            .padding()
                        
                        HStack{
                            
                            Map(coordinateRegion: $secondMap, annotationItems: locations)
                            {
                                location in
                                MapMarker(coordinate: CLLocationCoordinate2D(latitude: 29.3689, longitude: 47.9697))
                                
                            }
                            
                            
                        }                    .frame(width: 300, height: animate2 ? 500 : 300)
                        
                            .onTapGesture {
                                withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0.9)){
                                    
                                    animate2.toggle()
                                }
                                
                           
                            }

                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                        
                            .padding()
                        
                        
                        Link("Go There", destination: URL( string: "https://goo.gl/maps/S5BeFZCcWV52xj1bA")!)
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 310, height: 30)
                        
                            .padding(.all)
                        
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        
                            .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.7), radius: 8)
                            .padding(30)
                        
                        
                        
                        
                        
                    }
                    
                    Divider()
                    
                    
                    
                    
                    //
                    
                    VStack{
                        
                        
                        Text("Masaha 13 Cafe")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 380, height: 80)
                        HStack{
                            
                            
                            Map(coordinateRegion: $thirdMap, annotationItems: locations)
                            {
                                location in
                                MapMarker(coordinate: CLLocationCoordinate2D(latitude: 29.3413, longitude: 47.9383))
                                
                                
                            }
                            
                        }.frame(width: 300, height: animate3 ? 500 : 300)
                        
                            .onTapGesture {
                                withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0.9)){
                                    
                                    animate3.toggle()
                                }
                                
                           
                            }
                        
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                            .padding()
                        
                        
                        Link("Go There", destination: URL( string: "https://goo.gl/maps/vVNdwmPqvAEKDG3c9")!)
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 310, height: 30)
                        
                            .padding(.all)
                        
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        
                            .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.7), radius: 8)
                            .padding(30)
                        
                        
                        
                        
                        
                    }
                    
                    Divider()                    //
                    VStack{
                        Text("Magnet Cafe")
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .frame(width: 380, height: 80)
                        
                        HStack{
                            
                            Map(coordinateRegion: $fourthMap, annotationItems: locations)
                            {
                                location in
                                MapMarker(coordinate: CLLocationCoordinate2D(latitude: 29.3750, longitude: 47.9899))
                            }
                            
                            
                        }.frame(width: 300, height: animate4 ? 500 : 300)
                        
                            .onTapGesture {
                                withAnimation(.spring(response: 0.9, dampingFraction: 0.9, blendDuration: 0.9)){
                                    
                                    animate4.toggle()
                                }
                                
                           
                            }
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        
                        
                            .padding()
                        
                        
                        
                        Link("Go There", destination: URL( string: "https://goo.gl/maps/cPDPGNEhetNkcnpX7")!)
                            .multilineTextAlignment(.center)
                        
                            .frame(width: 310, height: 30)
                        
                            .padding(.all)
                        
                            .font(Font.custom("NeufileGrotesk-SemiBold",size:25))
                            .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                        
                            .background(Color(red: 0.182, green: 0.256, blue: 0.311))
                        
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.7), radius: 8)
                            .padding(30)
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                    
                    //
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
            }
        }
        
        
        //
        
        
        
        
        
        //
    }
    
}

















/*
 ZStack{
 (Color(red: 0.7803921568627451, green: 0.8549019607843137, blue: 0.8274509803921568)).ignoresSafeArea()
 
 
 
 
 
 
 ScrollView{
 VStack{
 
 
 VStack{
 
 Link("Niu Collaborative Community", destination: URL( string: "https://goo.gl/maps/kXqpyojFa79Vqw958")!)
 .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
 .foregroundColor(.black)
 .multilineTextAlignment(.center)
 .frame(width: 380, height: 80)
 HStack{
 Image("niu")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 200, height: 200)
 .padding()
 Image("googlemaps")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 100, height: 100)
 
 }
 Divider()
 
 
 Link("With Cafe", destination: URL( string: "https://goo.gl/maps/S5BeFZCcWV52xj1bA")!)
 
 
 
 .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
 .foregroundColor(.black)
 .multilineTextAlignment(.center)
 .frame(width: 380, height: 80)
 
 HStack{
 Image("withcafe")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 200, height: 200)
 .padding()
 Image("googlemaps")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 100, height: 100)
 }
 Divider()
 
 VStack{
 
 Link("Masaha13", destination: URL( string: "https://goo.gl/maps/vVNdwmPqvAEKDG3c9")!)
 
 
 
 .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
 .foregroundColor(.black)
 .multilineTextAlignment(.center)
 .frame(width: 380, height: 80)
 
 HStack{
 Image("masaha13")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 200, height: 200)
 .padding()
 Image("googlemaps")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 100, height: 100)
 
 }
 Divider()
 
 
 
 
 Link("Magnet Cafe", destination: URL( string: "https://goo.gl/maps/cPDPGNEhetNkcnpX7")!)
 
 
 
 .font(Font.custom("NeufileGrotesk-SemiBold",size:28))
 .foregroundColor(.black)
 .multilineTextAlignment(.center)
 .frame(width: 380, height: 80)
 
 HStack{
 Image("magnet")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 200, height: 200)
 .padding()
 
 Image("googlemaps")
 .resizable()
 .scaledToFit()
 .cornerRadius(12)
 .frame(width: 100, height: 100)
 
 
 }
 
 }
 
 
 
 //
 //                    Link("View Our Terms of Service",
 //                          destination: URL(string: "https://www.example.com/TOS.html")!)
 
 
 
 //                        Image()
 //                            .resizable()
 //                            .scaledToFit()
 //                            .cornerRadius(12)
 //                            .frame(width: 200, height: 200)
 }
 }
 }.frame(height: 700)
 }
 
 
 
 
 
 
 
 
 
 
 
 */


struct SuggestedPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestedPlacesView()
    }
}
