//
//  ContentView.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection : Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            VStack {
                DashboardScreen()
                Button("Go To Second Tab!") {
                    self.selection = 1
                }
            }
            .tabItem {
                Label("Tab 1", systemImage: "sun.min")
            }
            .tag(0)
            NavigationView {
                CatalogScreen()
            }
            .tabItem {
                Label("Tab 2", systemImage: "wind.snow")
            }
            .tag(1)
            ProfileScreen()
                .tabItem {
                    Label("About", systemImage: "snowflake")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DashboardViewModel())
    }
}
