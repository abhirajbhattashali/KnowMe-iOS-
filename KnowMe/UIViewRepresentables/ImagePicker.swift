//
//  ImagePicker.swift
//  ImagePicker
//
//  Created by Stephanie Diep on 2021-03-02.
//

import UIKit
import SwiftUI
import CoreML
import Vision


struct ImagePicker: UIViewControllerRepresentable {
   
    @Environment(\.presentationMode) private var presentationMode
    @Binding var selectedImage: UIImage
    @Binding var objectIdentifier:String
    

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {

        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .camera
        imagePicker.delegate = context.coordinator

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            DispatchQueue.main.async {
                if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                    self.parent.selectedImage = image
                    
                    guard let convertedCIImage = CIImage(image: image) else{
                        fatalError("Could not convert image to CIImage.")
                    }
                    self.detect(image:convertedCIImage)
                }

                self.parent.presentationMode.wrappedValue.dismiss()
                
            }
        }

          
        
        
        func detect(image:CIImage){
            guard let model = try? VNCoreMLModel(for: KnowMeImageClassifier().model) else{
                fatalError("Cannot import model")
            }
            
            let request = VNCoreMLRequest(model: model){(request,error) in
                print(request.results)
                guard let classification = request.results?.first as? VNClassificationObservation else{
                    fatalError("Could not classify flower image.")
                }
                self.parent.objectIdentifier = classification.identifier.uppercased()
                
            }
            
            let handler = VNImageRequestHandler(ciImage:image)
            do{
                try handler.perform([request])
            }
            catch{
                print(error)
            }
        }

    }
}
