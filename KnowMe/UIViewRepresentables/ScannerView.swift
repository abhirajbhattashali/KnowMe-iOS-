//
//  ScannerView.swift
//  KnowMe
//
//  Created by Abhiraj on 05/07/23.
//

import Foundation
import SwiftUI
import UIKit

struct ScannerView: UIViewControllerRepresentable,View {
    
    func makeUIViewController(context: Context) -> ScannerViewController{
        return ScannerViewController()
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {
        // Update the view controller if needed
    }
    
  
}

