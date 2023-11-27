// Created 27.11.2023 

import SwiftUI

struct HeightReader: ViewModifier {
    @Binding var height: CGFloat

    func body(content: Content) -> some View {
        content
            .background(GeometryReader { proxy in
                Color.clear
                    .onAppear {
                        height = proxy.size.height
                    }
                    .onChange(of: proxy.size.height) {
                        height = proxy.size.height
                    }
            })
    }
}

extension View {
    func readHeight(to binding: Binding<CGFloat>) -> some View {
        self.modifier(HeightReader(height: binding))
    }
}


