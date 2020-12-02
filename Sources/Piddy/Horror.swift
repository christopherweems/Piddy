//
//  Horror.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Horror: PodcastGroup {
    public var body: Body {
        "Dark Verse"
            .url(authority: "thedarkverse.sharkchild.com")
        
        "Ghosts In The Burbs"
            .url(authority: "ghostsintheburbs.com")
        
        "Knifepoint Horror"
            .host("Soren Narnia")
            .abbreviation("KPH")
            .url(authority: "knifepointhorror.libsyn.com")
        
        "Light House"
            .producer(.iHeartRadio)
        
        "Nightmare Magazine"
        
        "Nightlight"
            .host("Tonia Ransom")
            .url(authority: "nightlightpod.com")
        
        "The Resurrectionist"
            .producer("Campfire Radio Theater")
        
        "Scare You To Sleep"
            .url(authority: "scareyoutosleep.com")
        
        "Unwell"
            .url(authority: "unwellpodcast.com")
            .fiction()
        
        "The Wrong Station"
            .url(authority: "wrongstation.com")
        
    }
    
    public init() { }
    
}
