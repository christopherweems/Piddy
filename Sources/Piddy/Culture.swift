//
//  Culture.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Culture: PodcastGroup {
    public var body: Body {
        "Bill Gates and Rashida Jones Ask Big Questions"
            .host("Bill Gates", "Rashida Jones")
            .producer("Gates Notes")
            .abbreviation("ABQ")
            .url("https://www.gatesnotes.com/podcast")
        
        "Brave New Planet"
            .host("Eric Lander")
            .network(.pushkin)
            .url("https://www.pushkin.fm/show/brave-new-planet/")
        
        "California City"
            .producer(.LAistStudios)
            .url("https://www.npr.org/podcasts/890392491/california-city")
        
        "The Lupe & Royce Show"
            .host("Lupe Fiasco", "Royce da 5\'9\"", "Tom Frank")
            .url(authority: "thelupeandroyceshow.buzzsprout.com")
        
        "Stuff You Should Know"
            .producer(.iHeartRadio)
            .url(authority: "stuffyoushouldknow.com")
        
    }
    
    public init() { }
    
}
