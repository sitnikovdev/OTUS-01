//
//  OTUS_01App.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

@main
struct OTUS_01App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DashboardViewModel())
        }
    }
}
