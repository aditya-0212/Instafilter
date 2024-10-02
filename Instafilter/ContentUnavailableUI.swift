//
//  ContentUnableUI.swift
//  Instafilter
//
//  Created by APPLE on 09/08/24.
//

import SwiftUI

struct ContentUnavailableUI: View {
    var body: some View {
//        ContentUnavailableView("No snippets",systemImage: "swift",description: Text("you don't have any saved snippets yet"))
        ContentUnavailableView{
            Label("No snippets",systemImage: "swift")
        } description:{
            Text("you don't have any saved snippets yet.")
        } actions: {
            Button("Create snippet"){
                //creat a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentUnavailableUI()
}
