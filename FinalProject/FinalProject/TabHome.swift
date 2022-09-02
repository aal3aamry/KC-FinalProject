//
//  TabHome.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI

struct TabHome: View {
    @State var tabSelection = 1
    var body: some View {
        
        
        TabView(selection: $tabSelection) {
      JoinPage()
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Join") }
                .tag(1)
            
            
            PersonsList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home") }
                .tag(2)
            
            
        ProfilePage()
                .tabItem {
                    Image(systemName: "person.crop.circle")

                    Text("Profile") }
                .tag(3)
            
            
            
            CartList(estPrice: 0.0)
                .tabItem {
                    Image(systemName: "cart")
                        
                    Text("Cart") }
                .tag(4)
            
            

        }

    }
}

struct TabHome_Previews: PreviewProvider {
    static var previews: some View {
        TabHome()
            .environmentObject(CartEnv())
    }
}
