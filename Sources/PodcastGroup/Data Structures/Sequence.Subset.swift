//
//  Sequence.Subset.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import Foundation
import unstandard

public enum _SequenceSubset {
    case all
    case first
    
}

public extension Sequence {
    typealias Subset = _SequenceSubset
    
}

public extension Collection {
    subscript(subset: Subset) -> [Element] {
        switch subset {
        case .all:
            return Array(self)
            
        case .first:
            return [self.first].compactMap { $0 }
            
        }
    }
    
}
