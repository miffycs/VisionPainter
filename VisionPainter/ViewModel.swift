//
//  ViewModel.swift
//  VisionPainter
//
//  Created by Miffy Chen on 2023-08-31.
//

import Foundation
import Observation

enum FlowState {
    case idle
    case intro
    case projectileFlying
    case updateArt
}

@Observable
class ViewModel {
    var flowState = FlowState.idle
}
