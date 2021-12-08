//
//  ColorModel.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import Foundation
import SwiftUI

struct ColorModel: Identifiable, Hashable {
    let id: UUID
    var name: String
    var color: Color
    var isSelected = false
}
