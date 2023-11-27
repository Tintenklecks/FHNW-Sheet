//
//  MySheetView.swift
//  FHNW-Sheet
//
//  Created by Ingo Boehme on 08.12.22.
//

import SwiftUI

// MARK: - MySheetView

struct MySheetView: View {
    @Binding var showSheet: Bool
    @Environment(\.dismiss) private var dismiss
    @Environment(\.isPresented) private var isPresented
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode> // 1

    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Text("Inverto ergo sum ...")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text("Close")
                        .font(.subheadline)
                        .bold()
                        .onTapGesture {
                            dismiss()
                        }
                        .padding()
                }
            }
            .padding()
            .background(Color(white: 0.8))
            Spacer()
            Text("I ***sheet***, so I am")
            Spacer()
        }
    }
}

// MARK: - MySheetView_Previews

struct MySheetView_Previews: PreviewProvider {
    static var previews: some View {
        MySheetView(showSheet: .constant(true))
    }
}
