//
//  ShareLinkView.swift
//  Instafilter
//
//  Created by APPLE on 09/08/24.
//

import SwiftUI

struct ShareLinkView: View {
    var body: some View {
//      ShareLink(item: URL(string: "https://www.hackingwithswift.com")!,subject: Text("Learn Swift here"),message: Text("Check out the 100 days of swiftUI"))
//        ShareLink(item: URL(string: "https://www.hackingwithswift.com")!){
//            Label("Spred the word about swift",systemImage: "swift")
//        }
        let example = Image(.example)
        ShareLink(item: example, preview: SharePreview("Singapore Airport",image: example)){
            Label("Click to share",systemImage: "airplane")
        }
    }
}

#Preview {
    ShareLinkView()
}
