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

    @State private var textHeight: CGFloat = 0
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
                .background(GeometryReader { proxy in
                    Color.clear
                        .onAppear {
                            self.textHeight = proxy.size.height
                        }
                        .onChange(of: proxy.size.height) {
                            self.textHeight = proxy.size.height
                        }
                })
                .presentationDetents([.height(textHeight + 30)])
                //.readHeight(to: $textHeight)
        }

        .sheet(isPresented: $showSecondSheet) {
            MySheetView(showSheet: $showSecondSheet)

                .presentationDetents(
                    [.medium, .large, .fraction(0.5), .height(29)]
                )
        }.onChange(of: textHeight) {
            print(textHeight)
        }
    }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
