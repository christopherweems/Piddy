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
            .producer("The Daily Wire")
        
        "The Charlie Kirk Show"
            .host("Charlie Kirk")
        
        "Graham Allen's Dear America"
        
        "The Matt Walsh Show"
            .host("Matt Walsh")
        
    }
    
    public init() { }
    
}
