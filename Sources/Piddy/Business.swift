//
//  Business.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Business: PodcastGroup {
    public var body: Body {
        "Decoder"
            .with(host: "Nilay Patel")
            .url("https://www.theverge.com/podcasts")
        
        "Land Of The Giants"
            .subtitle("The Netflix Effect")
            .producer(.vox)
            .url("https://www.vox.com/land-of-the-giants-podcast")
        
    }
    
    public init() { }
    
}
