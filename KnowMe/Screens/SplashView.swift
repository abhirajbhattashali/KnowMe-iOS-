//
//  SplashView.swift
//  KnowMe
//
//  Created by Abhiraj on 11/03/23.
//

import SwiftUI

struct SplashView: View {
    @State var isActive:Bool = false
    @State private var image = UIImage()
    @State private var showSheet = false
    var body: some View {
        ZStack {
            if self.isActive{
                Color(red: 0.133, green: 0.149, blue: 0.161)
                    .ignoresSafeArea()
            }
            else{
                Color.white
                    .ignoresSafeArea()
            }
           
            VStack (spacing:10){
                if self.isActive{
                    ContentView()
                }
                else{
                    Image("screenLogo")
                        .renderingMode(.original)
                        .resizable()
                    .frame(width: 300,height: 90,alignment: .center)
                    .padding(.vertical,300)
                       Image("from")
                    HStack {
                        Image("NTL-Logo")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 20,height: 18)
                        Image("NTL-AP")
                    }
                }
                

            }
            .padding(10)

            .onAppear{
                DispatchQueue.main.asyncAfter(deadline:.now() + 2){
                    withAnimation{
                        self.isActive = true
                    }
                }
        }
        }
            
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
