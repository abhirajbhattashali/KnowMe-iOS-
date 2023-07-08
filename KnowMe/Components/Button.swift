//
//  Button.swift
//  ImagePicker
//
//  Created by Stephanie Diep on 2021-03-02.
//

import SwiftUI

struct CustomButton: View {
    let text:String
    var body: some View {
        
        Text(text)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)

        //Color(red: 0.271, green: 0.635, blue: 0.62)
            .background(LinearGradient(colors: [.indigo,.blue,.purple,.teal],startPoint: .trailing, endPoint: .leading))
            .foregroundColor(.white)
        
            .clipShape(RoundedRectangle(cornerSize: CGSize(width:100, height: 40)))
         
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(text: "Text")
    }
}
