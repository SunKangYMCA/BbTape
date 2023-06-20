//
//  Font.swift
//  BbTape
//
//  Created by 강성찬 on 2023-06-11.
//

import SwiftUI

extension Font {
    enum BBFontType {
        case tiny, small, normal, large, huge
        case tinyBold, smallBold, normalBold, largeBold, hugeBold
        
        var size: CGFloat {
            switch self {
            case .tiny, .tinyBold:
                return 12
            case .small, .smallBold:
                return 20
            case .normal, .normalBold:
                return 30
            case .large, .largeBold:
                return 54
            case .huge, .hugeBold:
                return 72
            }
        }
        
        var weight: Weight {
            switch self {
            case .tiny, .small, .normal, .large, .huge:
                return .regular
            case .tinyBold, .smallBold, .normalBold, .largeBold, .hugeBold:
                return .bold
            }
        }
    }
    static func bbFont(type: Font.BBFontType = .normal) -> Font {
        .system(size: type.size, weight: type.weight)
    }
}

