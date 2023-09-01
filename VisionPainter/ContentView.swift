//
//  ContentView.swift
//  VisionPainter
//
//  Created by Miffy Chen on 2023-08-31.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Welcome to Vision Painter!")
                .font(.extraLargeTitle2)
        })
        .padding(40)
        .glassBackgroundEffect()
        .onAppear(perform: {
            Task {
                await openImmersiveSpace(id: "ImmersiveSpace")
            }
        })
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
