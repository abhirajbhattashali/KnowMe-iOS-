//
//  ContentView.swift
//  KnowMe
//
//  Created by Abhiraj on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image = UIImage()
    @State private var source: UIImagePickerController.SourceType = .photoLibrary
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Image("welcomeLogo")
                    
                        .renderingMode(.original)
                        .resizable()
                        .frame(width:240,height: 320,alignment: .leading)
                        .aspectRatio(contentMode: .fit)
                    
                    
                    
                    VStack(alignment: .center) {
                        Text("Unlock the possibilities of Next Tech Lab with our app")
                            .foregroundColor(.purple)
                            
                            .bold()
                        
                            .multilineTextAlignment(.center)
                        
                            .padding(.vertical,5)
                          
                        
                        Text("Select an option below to proceed with exploring the different things in this lab")
                            .foregroundColor(.purple)
                            .bold()
                        
                            .multilineTextAlignment(.center)
                            
                            .padding()
                        
                        
                    }
                    .frame(width: UIScreen.main.bounds.width*0.9)
                    .padding(.vertical,30)
                    
                    
                    
                    Button(text: "Realtime Scan")
                        .padding(30)
                        .onTapGesture {
                            showSheet = true
                            source = .camera
                        }
                        .sheet(isPresented:$showSheet) {
                            ImagePicker(sourceType:$source, selectedImage: $image)
                        }
                    
                    
                    Button(text: "Static Scan")
                        .onTapGesture {
                            showSheet = true
                            source = .camera
                        
                        }
                        .sheet(isPresented:$showSheet) {
                          
                            ImagePicker(sourceType:$source, selectedImage: $image)
                        }
                }
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
