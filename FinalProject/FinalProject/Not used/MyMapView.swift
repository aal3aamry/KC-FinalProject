////
////  MyMapView.swift
////  FinalProject
////
////  Created by عبدالرحمن العامري on 06/09/2022.
////
//
//import SwiftUI
//import LinkPresentation
//
//    
//    class LinkViewModel : ObservableObject {
//        let metadataProvider = LPMetadataProvider()
//        
//        @Published var metadata: LPLinkMetadata?
//        @Published var image: UIImage?
//        
//        init(link : String) {
//            guard let url = URL(string: link) else {
//                return
//            }
//            
//            
//            metadataProvider.startFetchingMetadata(for: url) { (metadata, error) in
//                        guard error == nil else {
//                            assertionFailure("Error")
//                            return
//                        }
//                
//                
//                DispatchQueue.main.async {
//                                self.metadata = metadata
//                            }
//                
//                
//                guard let imageProvider = metadata?.imageProvider else { return }
//                            imageProvider.loadObject(ofClass: UIImage.self) { (image, error) in
//                                guard error == nil else {
//                                    // handle error
//                                    return
//                                }
//                                
//                                
//                                if let image = image as? UIImage {
//                                                    // do something with image
//                                                    DispatchQueue.main.async {
//                                                        self.image = image
//                                                    }
//                                                }
//                                
//                                
//                                else {
//                                                    print("no image available")
//                                                }
//                                
//                                
//                            }
//                                    }
//                                }
//                            }
//
//            
//            
//    
//struct MyMapView: View {
//    @StateObject var vm : LinkViewModel
//    var body: some View {
        
        
//        if let metadata = vm.metadata {
//                    LPLinkViewRepresented(metadata: metadata)
//                } else {
//                    EmptyView()
//                }
//            }
//        }
//
//        class LinkViewModel : ObservableObject {
//            let metadataProvider = LPMetadataProvider()
//
//            @Published var metadata: LPLinkMetadata?
//
//            init(link : String) {
//                guard let url = URL(string: link) else {
//                    return
//                }
//                metadataProvider.startFetchingMetadata(for: url) { (metadata, error) in
//                    guard error == nil else {
//                        assertionFailure("Error")
//                        return
//                    }
//                    DispatchQueue.main.async {
//                        self.metadata = metadata
//                    }
//                }
//            }
//        }
//
//
            
            
    
//        VStack {
//                    if let metadata = vm.metadata {
//                        Text(metadata.title ?? "")
//                    }
//                    if let uiImage = vm.image {
//                        Image(uiImage: uiImage)
//                            .resizable()
//                            .frame(width: 100, height: 100)
//                    }
//                }
//
//
//
//
//
//
//}
//
//struct MyMapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MyMapView()
//    }
//}
