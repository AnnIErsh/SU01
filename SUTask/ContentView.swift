//
//  ContentView.swift
//  SUTask
//
//  Created by Anna Ershova on 05.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    @State private var selectionColor: Int?
    
    var body: some View {
        TabView(selection: $selection) {
            DashboardScreen(tabTag: $selection, tabColor: $selectionColor).tabItem {
                Label("Dashboard", systemImage: "circle")
            }
            .tag(0)
            ColorScreen(selectedColor: $selectionColor).tabItem {
                Label("Colors", systemImage: "paintbrush")
            }
            .tag(1)
            PictureScreen().tabItem {
                Label("Picture", systemImage: "scribble")
            }
            .tag(2)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
