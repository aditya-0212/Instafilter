//
//  SwiftUIView.swift
//  Instafilter
//
//  Created by APPLE on 03/08/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var showConfirmation = false
    @State private var backgroundColor = Color.white
    var body: some View {
        Button("Hello World"){
            showConfirmation.toggle()
        }
        .frame(width:300,height:300)
        .background(backgroundColor)
        .confirmationDialog("change background", isPresented: $showConfirmation){
            Button("Red"){ backgroundColor = .red }
            Button("green"){ backgroundColor = .green }
            Button("blue"){ backgroundColor = .blue}
            Button("cancle",role: .cancel){}
        }
    }
}

#Preview {
    SwiftUIView()
}
