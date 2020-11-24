//
//  TrueCrime.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct TrueCrime: PodcastGroup {
    public var body: Body {
        "My Favorite Murder"
            .host("Karen Kilgariff", "Georgia Hardstark")
            .subtitle(.with(.all))
            .producer("Exactly Right")
            .url(authority: "myfavoritemurder.com")
        
    }
    
    public init() { }
    
}
