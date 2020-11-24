//
//  Psychology.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Psychology: PodcastGroup {
    public var body: Body {
        "Hidden Brain"
            .url("https://www.npr.org/series/423302056/hidden-brain")
        
        "On Being"
            .with(host: "Krista Tippett")
            .url("https://onbeing.org/series/podcast/")
        
        "Popcorn Psychology"
            .url("https://www.spreaker.com/user/popcorn_psychology")
        
        "Speaking Of Psychology"
            .producer("American Psychological Association")
            .url("https://www.apa.org/research/action/speaking-of-psychology/")
        
        "Therapy For Black Girls"
            .subtitle("The Podcast")
            .url("https://therapyforblackgirls.com/podcast/")
        
        "Unlocking Us"
            .with(host: "Brené Brown")
            .url("https://brenebrown.com/unlockingus/")
        
        "Where Should We Begin?"
            .with(host: "Ester Perel")
            .url("https://www.estherperel.com/podcast")
        
    }
    
    public init() { }
    
}
