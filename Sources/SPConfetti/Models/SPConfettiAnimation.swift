// The MIT License (MIT)
// Copyright © 2021 Ivan Vorobei (hello@ivanvorobei.io)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/**
 SPConfetti: Emitter position and direction styles.
 */
public enum SPConfettiAnimation: CaseIterable {
    public static var allCases: [SPConfettiAnimation] {
        return [
            .fullWidthToDown,
            .fullWidthToUp,
            .centerWidthToUp,
            .centerWidthToDown,
            .centerExplosionToDown(
                yAcceleration: 0.0
            )
        ]
    }
    
    
    case fullWidthToDown
    case fullWidthToUp
    case centerWidthToDown
    case centerWidthToUp
    case centerExplosionToDown(yAcceleration: CGFloat)
    
    public var id: String {
        switch self {
        case .fullWidthToDown: return "fullWidthToDown"
        case .fullWidthToUp: return "fullWidthToUp"
        case .centerWidthToDown: return "centerWidthToDown"
        case .centerWidthToUp: return "centerWidthToUp"
        case .centerExplosionToDown:
            return "centerExplosionToDown"
        }
    }
    
    public var debugName: String {
        switch self {
        case .fullWidthToDown: return "Full Width to Down"
        case .fullWidthToUp: return "Full Width to Up"
        case .centerWidthToDown: return "Center Width to Down"
        case .centerWidthToUp: return "Center Width to Up"
        case .centerExplosionToDown:
            return "Center Mild Explosion to Down"
        }
    }
}
