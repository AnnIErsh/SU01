//
//  ColorScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import SwiftUI

struct ColorScreen: View {
    @Binding var selectedColor: Int?
    @EnvironmentObject var colorViewModel: ColorViewModel
    
    var body: some View {
        ScrollViewReader { index in
            NavigationView {
                List(self.$colorViewModel.colors.indices) { i in
                    NavigationLink(destination: PreviewColorScreen(chosenColor: $colorViewModel.colors[i]), tag: i, selection: $colorViewModel.colorToChose) {
                        ColorRow(text: $colorViewModel.colors[i].name, color: $colorViewModel.colors[i].color, isSelected: $colorViewModel.colors[i].isSelected)
                            .padding(.vertical)
                            .listRowSeparator(.hidden)
                    }
                    .id(i)
                }
                .navigationBarTitle("Colors", displayMode: .inline)
                .onAppear {
                    index.scrollTo(selectedColor)
                    colorViewModel.tmp = selectedColor
                }
                .onDisappear {
                    selectedColor = nil
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ColorRow: View {
    @Binding var text: String
    @Binding var color: Color
    @Binding var isSelected: Bool
    @State var imageName: String = "app.fill"
    var body: some View {
        Label("\(text)", systemImage: imageName)
            .foregroundColor(color)
    }
}

