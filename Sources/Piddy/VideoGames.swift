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
            .url("https://soundcloud.com/nintendopowerpodcast/")
        
        "Nintendo Voice Chat"
            .url("https://www.ign.com/watch/nintendo-voice-chat")
        
        "Retronauts"
            .url(authority: "retronauts.com")
        
        "Super Gamer Podcast"
            .url(authority: "supergamerpodcast.com")
        
    }
    
    public init() { }
    
}
