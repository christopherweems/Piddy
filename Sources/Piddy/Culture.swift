//
//  Culture.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Culture: PodcastGroup {
    public var body: Body {
        "Bill Gates and Rashida Jones Ask Big Questions"
            .host("Bill Gates", "Rashida Jones")
            .producer("Gates Notes")
            .url("https://www.gatesnotes.com/podcast")
        
        "Stuff You Should Know"
            .producer("iHeartRadio")
            .url(authority: "stuffyoushouldknow.com")
        
    }
    
    public init() { }
    
}
