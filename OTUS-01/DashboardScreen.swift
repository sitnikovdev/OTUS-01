//
//  DashboardScreen.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

struct DashboardScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Dashboard")
            Image(systemName: "leaf")
        }
        .onTapGesture {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen()
    }
}
