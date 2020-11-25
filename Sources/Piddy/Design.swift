//
//  Design.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Design: PodcastGroup {
    public var body: Body {
        "99% Invisible"
            .host("Roman Mars")
            .abbreviation("99P")
            .url(authority: "99percentinvisible.org")
        
    }
    
    public init() { }
    
}
