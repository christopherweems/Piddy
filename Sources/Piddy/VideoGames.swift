//
//  VideoGames.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct VideoGames: PodcastGroup {
    public var body: Body {
        "Nintendo Power Podcast"
        
        "Nintendo Voice Chat"
            .url("https://www.ign.com/watch/nintendo-voice-chat")
        
        "Super Gamer Podcast"
            .url(authority: "supergamerpodcast.com")
        
    }
    
    public init() { }
    
}
