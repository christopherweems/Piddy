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
            .url("https://www.dailywire.com/show/the-ben-shapiro-show")
        
        "The Charlie Kirk Show"
            .host("Charlie Kirk")
            .url("https://charliekirk.com/podcasts/")
        
        "Deep Background"
            .with(host: "Noah Feldman")
            .network(.pushkin)
            .url("https://www.pushkin.fm/show/deep-background/")
        
        "Graham Allen's Dear America"
        
        "The Matt Walsh Show"
            .host("Matt Walsh")
            .url("https://www.dailywire.com/show/the-matt-walsh-show")
        
    }
    
    public init() { }
    
}
