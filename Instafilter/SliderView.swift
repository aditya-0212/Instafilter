//
//  ContentView.swift
//  Instafilter
//
//  Created by APPLE on 03/08/24.
//

import SwiftUI

struct SliderView: View {
    @State private var blurAmount = 0.0{
        didSet{
            print("print the new value\(blurAmount)")
        }
    }
    
    var body: some View {
        VStack {
            Text("Hello Aditya")
                .blur(radius: blurAmount)
            
            Slider(value:$blurAmount,in: 0...20)
                .onChange(of:blurAmount){oldValue,newValue in
                    print("new Value:\(newValue)")
                    print("old Value:\(oldValue)")
                }
            
            Button("click"){
                blurAmount = Double.random(in: 0...20)
            }
        }
        
    }
}

#Preview {
    SliderView()
}
