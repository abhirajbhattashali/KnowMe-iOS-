//
//  ImageView.swift
//  KnowMe
//
//  Created by Abhiraj on 18/03/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("NTL-AP")
            .renderingMode(.original)

            .aspectRatio(contentMode: .fill)
            
          
         
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
