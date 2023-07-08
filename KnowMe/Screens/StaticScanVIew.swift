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
        ZStack {
            Color(red: 0.133, green: 0.149, blue: 0.161)
                .ignoresSafeArea()
            VStack {
                Image(uiImage: self.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fill)
                    .frame(width:300,height: 380)
                    .border(.black)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.vertical,100)
                    .padding(.horizontal,20)
                    
                    Spacer()
                    
                Text("\(self.identifier)")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .background(Color(red: 0.255, green: 0.392, blue: 0.29))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                 
                
                Button{self.isShowPhotoLibrary = true}
            label:{
                    HStack {
                        Image(systemName: "camera")
                            .font(.system(size: 20))
                        
                        Text("Take Pic")
                            .font(.headline)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                    .background(Color(red: 0.149, green: 0.227, blue: 0.161)) 
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding(.horizontal)
                    .padding(.vertical)
                }
            }
            .sheet(isPresented:$isShowPhotoLibrary) {
                
                ImagePicker(selectedImage:self.$image, objectIdentifier:self.$identifier)
        }
        }
    }
}
    

struct StaticScanVIew_Previews: PreviewProvider {
    static var previews: some View {
        StaticScanVIew()
    }
}
