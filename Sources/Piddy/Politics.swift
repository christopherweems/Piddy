//
//  Politics.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Politics: PodcastGroup {
    public var body: Body {
        "The Ben Sharpiro Show"
            .producer(.dailyWire)
        
        "The Charlie Kirk Show"
            .host("Charlie Kirk")
        
        "Deep Background"
            .with(host: "Noah Feldman")
            .network(.pushkin)
            .url("https://www.pushkin.fm/show/deep-background/")
        
        "Graham Allen's Dear America"
        
        "The Matt Walsh Show"
            .host("Matt Walsh")
        
    }
    
    public init() { }
    
}
