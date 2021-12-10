//
//  Picture.swift
//  
//
//  Created by Anna Ershova on 10.12.2021.
//

import Foundation
import SwiftUI
import UIKit

public struct Picture: UIViewRepresentable {
    
    public var imgColor: Color = .blue
    
    public init() {
        
    }
    
    public init(color: Color) {
        self.imgColor = color
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
      
    }
    
    public func makeUIView(context: Context) -> UIView {
        UIView.createPicture(imgColor)
    }
    
}

extension UIView {
    public static func createPicture(_ withColor: Color) -> UIView {
        let imgView = UIImageView(image: UIImage(systemName: "moon.stars"))
        if #available(iOS 14.0, *) {
            imgView.tintColor = UIColor(withColor)
        }
        imgView.contentMode = .scaleAspectFit
        return imgView
    }
}
