//
//  LinkPreviews.swift
//  FinalProject
//
//  Created by عبدالرحمن العامري on 06/09/2022.
//

import SwiftUI
import LinkPresentation

struct LinkPreviews: UIViewRepresentable {

    var metaData: LPLinkMetadata
    
    
    func makeUIView(context: Context) -> LPLinkView  {
        let preview = LPLinkView(metadata: metaData)
                                 
        return preview
    }

    func updateUIView(_ uiView: LPLinkView, context: Context) {
        uiView.metadata = metaData
    }
    
}

