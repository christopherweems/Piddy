//
//  Technology.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import PodcastGroup

public struct Technology: PodcastGroup {
    public var body: Body {
        "Accidental Tech Podcast"
            .host("Marco Arment", "Casey Liss", "John Siracusa")
            .url(authority: "atp.fm")
        
        "Reply All"
            .network(.gimlet)
            .url("https://gimletmedia.com/reply-all/")
        
        "The Talk Show"
            .with(host: "John Gruber")
            .url("https://daringfireball.net/thetalkshow/")
        
        "Waveform"
            .subtitle("The MKBHD Podcast")
            .abbreviation("WVFRM")
            .host("MKBHD")
            .producer(.studio71)
        
    }
    
    public init() { }
    
}
