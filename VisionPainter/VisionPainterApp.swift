//
//  VisionPainterApp.swift
//  VisionPainter
//
//  Created by Miffy Chen on 2023-08-31.
//

import SwiftUI

@main
struct VisionPainterApp: App {
    
    @State private var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(viewModel)
        }.windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
