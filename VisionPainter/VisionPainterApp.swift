//
//  VisionPainterApp.swift
//  VisionPainter
//
//  Created by Miffy Chen on 2023-08-31.
//

import SwiftUI

@main
struct VisionPainterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
