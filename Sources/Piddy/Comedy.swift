//
//  Comedy.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import PodcastGroup

public struct Comedy: PodcastGroup {
    public var body: Body {
        "The Adam Carolla Show"
            .url(authority: "adamcarolla.com")
        
        "Armchair Expert"
            .with(host: "Dax Sheppard")
            .url(authority: "armchairexpertpod.com")
        
        "Attention HellMart Shoppers!"
            .producer("Harmless Entertainment")
            .url(authority: "attentionhellmartshoppers.com")
            .fiction()
        
        "The Joe Rogan Experience"
            .host("Joe Rogan")
            .url(authority: "thejoeroganexperience.net")
        
        "Lady To Lady"
            .host("Barbara Gray", "Brandie Posey", "Tess Barker")
            .url(authority: "ladytoladycomedy.com")
        
        "The Monday Morning Podcast"
            .host("Bill Burr")
            .url("https://billburr.com/podcast/")
        
        "Wait Wait... Don't Tell Me!"
            .producer(.npr)
            .url("https://www.npr.org/programs/wait-wait-dont-tell-me/")
        
    }
    
    public init() { }
    
}
