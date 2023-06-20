//
//  KnowMeApp.swift
//  KnowMe
//
//  Created by Abhiraj on 09/03/23.
//

import SwiftUI

@main
struct KnowMeApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(ViewModel())
        }
    }
}
