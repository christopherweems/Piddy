//
//  Music.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Music: PodcastGroup {
    public var body: Body {
        "Dolly Parton's America"
            .producer("WNYC Studios", "OSM Audio")
            .url(authority: "dollypartonsamerica.com")
        
        "Questlove Supreme"
            .producer("iHeartRadio")
        
    }
    
    public init() { }
    
}
