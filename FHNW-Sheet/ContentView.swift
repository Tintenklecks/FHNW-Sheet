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
//    @State private var showSecondSheet = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()

            Button("Show the sheet") {
                showSheet.toggle()
            }
//            Button("Show the second sheet") {
//                showSecondSheet.toggle()
//            }
        }
        .padding()
        .sheet(isPresented: $showSheet) {
            Text("This is the content of this 'sheet'")
        }
//        .sheet(isPresented: $showSecondSheet) {
//            MySheetView()
//                .presentationDetents([.medium, .large, .height(100)])
//                .presentationDragIndicator(.hidden)
//        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
