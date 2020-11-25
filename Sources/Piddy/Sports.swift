//
//  Sports.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Sports: PodcastGroup {
    public var body: Body {
        "Sports Uncovered"
            .producer(.nbcSports)
        
    }
    
    public init() { }
    
}
