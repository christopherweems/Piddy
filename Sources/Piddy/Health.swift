//
//  Health.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Health: PodcastGroup {
    public var body: Body {
        "7 Good Minutes Daily Self-Improvement Podcast"
            .with(host: "Clyde Lee Dennis")
            .abbreviation("7GM")
            .url(authority: "7goodminutes.com")
        
    }
    
    public init() { }
    
}
