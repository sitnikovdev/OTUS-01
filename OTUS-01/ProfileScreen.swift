//
//  ProfileScreen.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject var dashboardViewModel : DashboardViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Profile")
            HStack {
                Button("Show About") {
                    dashboardViewModel.isContactShowed.toggle()
                }
                .sheet(isPresented: $dashboardViewModel.isContactShowed) {
                    AboutScreen()
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
