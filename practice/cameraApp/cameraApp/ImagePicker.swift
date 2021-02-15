//
//  ImagePicker.swift
//  cameraApp
//
//  Created by 岡澤輝明 on 2021/02/14.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        return picker
    }
    
    func updateUIViewController (_ uiViewController:
        UIImagePickerController, context: Context) {
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker()
    }
}
