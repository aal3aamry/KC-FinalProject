//
//  ProfileImageMod.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 31/08/2022.
//

import SwiftUI



extension Image {



    func profileImageMod() -> some View {

        self

            .resizable()

            .frame(width: 120, height: 120)

            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

    }



}
