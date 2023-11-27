//
//  ContentView.swift
//  FHNW-Sheet
//
//  Created by Ingo Boehme on 08.12.22.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    @State private var showSheet = false {
        didSet {
            print("Breakpoint here")
        }
    }

    @State private var showSecondSheet = false

    var body: some View {
        VStack(spacing: 48) {
            Button("Show the first sheet") {
                showSheet.toggle()
            }

            Button("Show the second sheet") {
                showSecondSheet.toggle()
            }
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .sheet(isPresented: $showSheet) {
            Text("This is the content of this 'sheet'")
        }
        .sheet(isPresented: $showSecondSheet) {
            MySheetView()
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
