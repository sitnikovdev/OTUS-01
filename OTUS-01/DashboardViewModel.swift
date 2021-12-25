//
//  DashboardViewModel.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI


final class DashboardViewModel : ObservableObject {
    @Published var title : String = "Dashboard"
    @Published var isContactShowed : Bool = false
}
