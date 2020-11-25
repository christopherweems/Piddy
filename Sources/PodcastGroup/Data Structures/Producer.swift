//
//  Producer.swift
//  
//
//  Created by Christopher Weems on 11/25/20.
//

import Algorithms
import Foundation
import unstandard

public enum Producer {
    case dailyWire
    case gimlet
    case iHeartRadio
    case LAistStudios
    case npr
    case nbcNews
    case nbcSports
    case osmAudio
    case pushkin
    case vox
    case wnycStudios
    case wondery
    case verbatim(_ v: String)
    
}

extension Producer: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = .verbatim(value)
    }
    
}

public extension Producer {
    @SingleResult var displayString: String {
        switch self {
        case .npr:
            "\(self)".uppercased()
            
        case .nbcNews, .nbcSports, .osmAudio, .wnycStudios:
            "\(self)".separateCamelCase().uppercased(words: .first)
            
        case .iHeartRadio:
            "\(self)"
            
        case .LAistStudios:
            "LAist Studios"
            
        case .verbatim(let verbatim):
            verbatim
            
        default:
            "\(self)".separateCamelCase()
            
        }
    }
    
}


// MARK: - Helper Extensions

fileprivate extension String {
    func separateCamelCase() -> String {
        self.chunked { $0.isUppercase || $1.isLowercase }
            .map { $0.allSatisfy(\.isUppercase) ? String($0) : $0.capitalized }
            .joined(separator: " ")
    }
    
    func uppercased(words wordSubset: _SequenceSubset) -> String {
        switch wordSubset {
        case .first:
            guard let firstSpaceIndex = self.firstIndex(where: \.isWhitespace) else { fallthrough }
            return String(self[..<firstSpaceIndex].uppercased() + self[firstSpaceIndex...])
            
        case .all:
            return self.uppercased()
            
        }
    }
    
}
