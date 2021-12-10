//
//  PreviewColorModel.swift
//  SUTask
//
//  Created by Anna Ershova on 11.12.2021.
//

import Foundation
import SwiftUI

final class PreviewColorModel: ObservableObject {
    @Published var title: String = "PreviewColor"
    @Published var chosenColor: Color = .blue
    
    var tmpColor: Color = .blue {
        didSet {
            self.chosenColor = tmpColor
        }
    }
}
