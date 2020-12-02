//
//  TrueCrime.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct TrueCrime: PodcastGroup {
    public var body: Body {
        "The Apex & The Abyss"
        
        "Crime Junkie"
            .producer("audiochuck")
            .url(authority: "crimejunkiepodcast.com")
        
        "Do No Harm"
            .producer("Wondery", .nbcNews)
            .url("https://www.nbcnews.com/donoharm")
        
        "Dr. Death"
            .host("Laura Bell")
            .url("https://wondery.com/shows/dr-death/")
        
        "Lore"
            .url(authority: "lorepodcast.com")
        
        "Morbid"
            .subtitle("A True Crime Podcast")
            .url(authority: "morbidpodcast.com")
        
        "My Favorite Murder"
            .host("Karen Kilgariff", "Georgia Hardstark")
            .subtitle(.with(.all))
            .producer("Exactly Right")
            .url(authority: "myfavoritemurder.com")
        
    }
    
    public init() { }
    
}
