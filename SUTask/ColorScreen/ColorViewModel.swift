//
//  ColorViewModel.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import Foundation
import SwiftUI

final class ColorViewModel: ObservableObject {
    @Published var title: String = "Colors"
    @Published var colors = [
        ColorModel(id: UUID(), name: "#be2813", color: .init(red: 0.745, green: 0.157, blue: 0.075, opacity: 1)),
        ColorModel(id: UUID(), name: "#3802da", color: .init(red: 0.22, green: 0.008, blue: 0.855, opacity: 1)),
        ColorModel(id: UUID(), name: "#467c24", color: .init(red: 0.275, green: 0.486, blue: 0.141, opacity: 1)),
        ColorModel(id: UUID(), name: "#808080", color: .init(red: 0.502, green: 0.502, blue: 0.502, opacity: 1)),
        ColorModel(id: UUID(), name: "#8e5af7", color: .init(red: 0.557, green: 0.353, blue: 0.969, opacity: 1)),
        ColorModel(id: UUID(), name: "#f07f5a", color: .init(red: 0.941, green: 0.498, blue: 0.353, opacity: 1), isSelected: true),
        ColorModel(id: UUID(), name: "#f3af22", color: .init(red: 0.953, green: 0.686, blue: 0.133, opacity: 1)),
        ColorModel(id: UUID(), name: "#3dacf7", color: .init(red: 0.239, green: 0.675, blue: 0.969, opacity: 1)),
        ColorModel(id: UUID(), name: "#e87aa4", color: .init(red: 0.91, green: 0.478, blue: 0.643, opacity: 1)),
        ColorModel(id: UUID(), name: "#0f2e3f", color: .init(red: 0.059, green: 0.18, blue: 0.247, opacity: 1))
    ]
    
    @Published var colorToChose: Int?
    
    var tmp: Int? = 0 {
        didSet {
            colorToChose = tmp
        }
    }
}
