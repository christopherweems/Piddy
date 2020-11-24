//
//  Comedy.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Comedy: PodcastGroup {
    public var body: Body {
        "Lady to Lady"
            .url(authority: "ladytoladycomedy.com")
        
        "The Monday Morning Podcast"
            .host("Bill Burr")
            .url("https://billburr.com/podcast/")
        
    }
    
    public init() { }
    
}
