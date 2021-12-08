//
//  ColorScreen.swift
//  SUTask
//
//  Created by Anna Ershova on 07.12.2021.
//

import SwiftUI

struct ColorScreen: View {
    var body: some View {
        NavigationView {
            ListView()
                .navigationBarTitle("Colors", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .edgesIgnoringSafeArea(.all)
    }
}

struct ListView: View {
    @ObservedObject var colorViewModel = ColorViewModel()
   // @State var selected: UUID?
    
    var body: some View {
        List($colorViewModel.colors) { color in
            NavigationLink(destination: PreviewColorScreen(chosenColor: color.color)) {
                ColorRow(text: color.name, color: color.color, isSelected: color.isSelected)
                    .padding(.vertical)
                    .listRowSeparator(.hidden)
            }
        }
    }
}

struct ColorRow: View {
    @Binding var text: String
    @Binding var color: Color
    @Binding var isSelected: Bool
    @State var imageName: String = "app.fill"
    @State var rowColor: Color = .white
    var body: some View {
        Label("\(text)", systemImage: imageName)
            .foregroundColor(color)
//            .onTapGesture {
//                print("\(text)")
//            }
            .onAppear {
                if (isSelected) {
                    rowColor = color.opacity(0.2)
                }
            }
            .listRowBackground(rowColor)
    }
}

struct ColorScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorScreen()
        }
    }
}
