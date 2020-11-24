//
//  Technology.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import PodcastGroup

public struct Technology: PodcastGroup {
    public var body: Body {
        "Accidental Tech Podcast"
            .host("Marco Arment", "Casey Liss", "John Siracusa")
            .url(authority: "atp.fm")
        
        "Reply All"
            .network("Gimlet")
            .url("https://gimletmedia.com/reply-all/")
        
        "Waveform"
            .subtitle("The MKBHD Podcast")
            .abbreviation("WVFRM")
            .host("MKBHD")
        
    }
    
    public init() { }
    
}
