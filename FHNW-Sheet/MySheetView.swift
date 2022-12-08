//
//  MySheetView.swift
//  FHNW-Sheet
//
//  Created by Ingo Boehme on 08.12.22.
//

import SwiftUI

struct MySheetView: View {
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode> // 1

    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Text("Inverto ergo sum ...")
                Spacer()
                Button("X") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()

            }
            .padding()
            .background(Color(white: 0.8))
            Spacer()
            Text("I ***sheet***, so I am")
            Spacer()
        }
    }
}

struct MySheetView_Previews: PreviewProvider {
    static var previews: some View {
        MySheetView()
    }
}
