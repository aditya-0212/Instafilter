//
//  CoreImageUI.swift
//  Instafilter
//
//  Created by APPLE on 03/08/24.
//
import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct CoreImageUI: View {
    @State private var image:Image?
    var body: some View {
        VStack{
            image?
                .resizable()
                .scaledToFit()
                .frame(width:300,height: 500)
        }
        .onAppear(perform:loadImage)
    }
    func loadImage(){
        let inputImage = UIImage(resource: .example)
        let beginImage  = CIImage(image: inputImage)
        
        let context = CIContext()
//        let currentFilter = CIFilter.sepiaTone()
//        let currentFilter = CIFilter.pixellate()
//        let currentFilter = CIFilter.crystallize()
        let currentFilter = CIFilter.twirlDistortion()
        
        currentFilter.inputImage = beginImage
//        currentFilter.intensity = 1
//        currentFilter.scale = 20
        currentFilter.radius = 300
        currentFilter.center = CGPoint(x: inputImage.size.width/2, y: inputImage.size.height/2)
        
        guard let outputImage = currentFilter.outputImage else { return }
        
        guard let cgImage = context.createCGImage(outputImage,from:outputImage.extent) else { return }
        
        let uiImage = UIImage(cgImage: cgImage)
        image = Image(uiImage:uiImage)
    }
}

#Preview {
    CoreImageUI()
}
