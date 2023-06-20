//
//  Button.swift
//  ImagePicker
//
//  Created by Stephanie Diep on 2021-03-02.
//

import SwiftUI

struct Button: View {
    let text:String
    var body: some View {
        
        Text(text)
            .frame(width:300)
            .padding(10)
            .background(LinearGradient(colors: [.purple,.pink,.orange], startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.white)
        
            .clipShape(RoundedRectangle(cornerSize: CGSize(width:20, height: 10)))
         
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button(text: "Text")
    }
}
