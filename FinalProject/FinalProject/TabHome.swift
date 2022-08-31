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
            
Fourht()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home") }
                .tag(2)
            
            
            Text("Tab Content 3")
                .tabItem {
                    Image(systemName: "person.crop.circle")

                    Text("Profile") }
                .tag(3)
            
            
            
        }

    }
}

struct TabHome_Previews: PreviewProvider {
    static var previews: some View {
        TabHome()
    }
}
