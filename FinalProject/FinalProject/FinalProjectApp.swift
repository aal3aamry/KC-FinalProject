//
//  FinalProjectApp.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 27/08/2022.
//

import SwiftUI
import Firebase
import UIKit
import FirebaseCore
@main
struct FinalProjectApp: App {
    
    
    
//    @UIApplicationDelegateAdaptor(AppDelegate.self)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CartEnv())
                
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        
        return true
    }
    }
