//
//  Sequence.Subset.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import Foundation

public enum _SequenceSubset {
    case all
    case first
    
}

public extension Sequence {
    typealias Subset = _SequenceSubset
    
}
