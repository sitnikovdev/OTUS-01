//
//  AboutScreen.swift
//  OTUS-01
//
//  Created by Oleg Sitnikov on 24.12.2021.
//

import SwiftUI

struct AboutScreen: View {
    @EnvironmentObject var dashboardViewModel : DashboardViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var text = "UIViewRepresentable test"
    var body: some View {
        VStack {
            HStack {
                Button("X") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                .padding(.leading)
                .padding(.top)
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                TextView(text: $text)
                    .font(.largeTitle)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 44.0)
                Spacer()
            }
            Spacer()
        }
    }
}

struct TextView: UIViewRepresentable {
    @Binding var text : String
    
    func makeUIView(context: UIViewRepresentableContext<TextView>) -> UITextView {
        return UITextView()
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<TextView>) {
        uiView.backgroundColor = .green
        uiView.font = .systemFont(ofSize: 24)
        uiView.text = text
    }
    
}

struct AboutScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        AboutScreen()
    }
}
