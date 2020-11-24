//
//  PiddyPodcastGroup.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import MixedGroup
import PodcastGroup
import unstandard

public enum PiddyPodcastGroup: PodcastGroup, CaseIterable {
    case horror
    case psychology
    case technology
    case trueCrime
    
    public var body: Body {
        switch self {
        case .horror:
            Horror().body
            
        case .psychology:
            Psychology().body
            
        case .technology:
            Technology().body
            
        case .trueCrime:
            TrueCrime().body
            
        }
    }
    
}
