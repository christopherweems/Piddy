//
//  Science.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Science: PodcastGroup {
    public var body: Body {
        "60-Second Science"
            .producer("Scientific American")
            .url("https://www.scientificamerican.com/podcast/60-second-science/")
        
    }
    
    public init() { }
    
}
