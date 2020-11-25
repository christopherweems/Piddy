//
//  Music.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Music: PodcastGroup {
    public var body: Body {
        "All Songs Considered"
            .producer(.npr)
            .url("https://www.npr.org/sections/allsongs/")
        
        "Broken Record"
            .host("Rick Rubin", "Malcolm Gladwell", "Bruce Headlam", "Justin Richmond")
            .network(.pushkin)
            .url(authority: "brokenrecordpodcast.com")
        
        "Dolly Parton's America"
            .producer(.wnycStudios, .osmAudio)
            .url(authority: "dollypartonsamerica.com")
        
        "Song Exploder"
            .url(authority: "songexploder.net")
        
        "Questlove Supreme"
            .abbreviation("QLS")
            .producer(.iHeartRadio)
            .url("https://www.iheart.com/podcast/1119-questlove-supreme-53194211/")
        
    }
    
    public init() { }
    
}
