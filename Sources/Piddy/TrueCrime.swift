//
//  TrueCrime.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct TrueCrime: PodcastGroup {
    public var body: Body {
        "Crime Junkie"
            .producer("audiochuck")
        
        "Do No Harm"
            .producer("Wondery", "NBC News")
                
        "Dr. Death"
        
        "Morbid"
            .subtitle("A True Crime Podcast")
        
        "My Favorite Murder"
            .host("Karen Kilgariff", "Georgia Hardstark")
            .subtitle(.with(.all))
            .producer("Exactly Right")
            .url(authority: "myfavoritemurder.com")
        
    }
    
    public init() { }
    
}
