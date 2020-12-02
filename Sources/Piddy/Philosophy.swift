//
//  Philosophy.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Philosophy: PodcastGroup {
    public var body: Body {
        "Alan Watts Podcast"
            .url(authority: "alanwattspodcast.com")
        
        "Into The Zone"
            .url("https://www.pushkin.fm/show/into-the-zone/")
        
        "Philosophy for Our Times"
            .url("https://art19.com/shows/philosophy-for-our-times")
        
        "Philosophize This!"
            .url(authority: "philosophizethis.org")
        
    }
    
    public init() { }
    
}
