//
//  History.swift
//  
//
//  Created by Christopher Weems on 11/25/20.
//

import PodcastGroup

struct History: PodcastGroup {
    var body: Body {
        "Ben Franklin's World"
            .url(authority: "benfranklinsworld.com")
        
        "Dan Carlin's Hardcore History"
            .url("https://www.dancarlin.com/hardcore-history-series/")
        
        "The Dollop"
            .url(authority: "dolloppodcast.com")
        
        "Our Fake History"
            .url(authority: "ourfakehistory.com", useHTTPS: false)
        
        "15 Minute History"
            .url(authority: "15minutehistory.org")
        
    }
    
}
