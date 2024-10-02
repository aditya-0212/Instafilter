//
//  PhotoPickerView.swift
//  Instafilter
//
//  Created by APPLE on 08/08/24.
//
import PhotosUI
import SwiftUI

struct PhotoPickerView: View {
//    @State private var pickerItem:PhotosPickerItem?
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    var body: some View {
        VStack{
            PhotosPicker( selection: $pickerItems,maxSelectionCount: 3,matching: .any(of: [.images,.not(.screenshots)])){
                Label("Select a picture",systemImage: "photo")
            }
            ScrollView{
                ForEach(0..<selectedImages.count,id:\.self){ i in
                    selectedImages[i]
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .onChange(of:pickerItems){
            Task{
                selectedImages.removeAll()
                
                for item in pickerItems {
                    if let loadedImage = try await item.loadTransferable(type:Image.self){
                        selectedImages.append(loadedImage)
                    }
                }
            }
        }
    }
       
}

#Preview {
    PhotoPickerView()
}
