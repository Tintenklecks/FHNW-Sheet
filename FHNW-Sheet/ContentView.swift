//
//  ContentView.swift
//  FHNW-Sheet
//
//  Created by Ingo Boehme on 08.12.22.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var showSheet = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding(.bottom, 48)

            Button("Show the sheet") {
                showSheet.toggle()
            }


        }
        .padding()
        .sheet(isPresented: $showSheet) {
            Text("This is the content of this 'sheet'")
        }
//        .sheet(isPresented: $showSecondSheet) {
//            MySheetView()
//                .presentationDetents([.medium, .large])
//        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
