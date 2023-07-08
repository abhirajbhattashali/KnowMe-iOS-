//
//  ContentView.swift
//  KnowMe
//
//  Created by Abhiraj on 09/03/23.
//

import SwiftUI

struct ContentView: View {
    

    
    @State private var showingFirst = false
    @State private var showingSecond = false

    
    
    var body: some View {
        ZStack {
            Color(red: 0.133, green: 0.149, blue: 0.161)
                .ignoresSafeArea()
            VStack {
                VStack{
                    Image("welcomeLogo")
                    
                        .renderingMode(.original)
                        .resizable()
                        .frame(width:270,height: 380,alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .padding(.top,60)
                        
                        .padding(.horizontal,20)
                    Spacer()
                    
                    CustomButton(text: "Realtime Scan")
                        .padding(.horizontal,20)
                     
                        
                        .onTapGesture {
                            showingFirst = true
                        
                        }
                        .sheet(isPresented:$showingFirst) {
                            ScannerView()
                        }
                    
                    
                    CustomButton(text: "Static Scan")
                        .padding(.horizontal,20)
                        .padding(.vertical)
                        .onTapGesture {
                            showingSecond = true
                           
                        
                        }
                        .sheet(isPresented:$showingSecond) {
                          
                            StaticScanVIew()
                        }
                }
                .padding(.bottom,2)
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
