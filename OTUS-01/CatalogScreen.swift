//
//  CatalogScreen.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

struct CatalogScreen: View {
    var body: some View {
        List {
            NavigationLink (destination: DashboardScreen()) {
                HStack {
                    Text("Dashboard")
                    Spacer()
                    Image(systemName: "leaf")
                }
            }
            NavigationLink (destination: Text("Second Tab Item")) {
                HStack {
                    Text("Second item")
                    Spacer()
                    Image(systemName: "checklist")
                }
            }
            NavigationLink (destination: ProfileScreen()) {
                HStack {
                    Text("Profile")
                    Spacer()
                    Image(systemName: "person")
                }
            }
            
        }
        .listStyle(.inset)
        .navigationTitle("Second Tab")
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogScreen()
    }
}
