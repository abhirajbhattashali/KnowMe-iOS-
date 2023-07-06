//
//  StaticScanVIew.swift
//  KnowMe
//
//  Created by Abhiraj on 06/07/23.
//

import SwiftUI

struct StaticScanVIew: View {
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State private var identifier = ""
    
    var body: some View {
        VStack {
           
            Text("\(self.identifier)")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
            
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            
            Button{self.isShowPhotoLibrary = true}
        label:{
                HStack {
                    Image(systemName: "camera")
                        .font(.system(size: 20))
                    
                    Text("Take Pic")
                        .font(.headline)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
            }
        }
        .sheet(isPresented:$isShowPhotoLibrary) {
            ImagePicker(selectedImage:self.$image, objectIdentifier:self.$identifier)
        }
    }
}
    

struct StaticScanVIew_Previews: PreviewProvider {
    static var previews: some View {
        StaticScanVIew()
    }
}
