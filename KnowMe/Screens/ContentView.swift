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
                    
                    
                    
                    CustomButton(text: "Realtime Scan")
                        .padding(30)
                        .onTapGesture {
                            showingFirst = true
                        
                        }
                        .sheet(isPresented:$showingFirst) {
                            ScannerView()
                        }
                    
                    
                    CustomButton(text: "Static Scan")
                        .onTapGesture {
                            showingSecond = true
                           
                        
                        }
                        .sheet(isPresented:$showingSecond) {
                          
                            StaticScanVIew()
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
