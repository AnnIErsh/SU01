//
//  DashboardScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import SwiftUI

struct DashboardScreen: View {
    @ObservedObject var dashboardViewModel = DashboardViewModel()
    @EnvironmentObject var colorViewModel: ColorViewModel
    @Binding var tabTag: Int
    @Binding var tabColor: Int?
    @State var push: Bool = false
    
    var body: some View {
        VStack {
            Button("Show random color") {
                push.toggle()
                tabTag = 1
                tabColor = Int.random(in: 0..<10)
            }
            .padding()
            .font(.title)
            .background(Color.gray.opacity(0.2))
        }
    }
}
