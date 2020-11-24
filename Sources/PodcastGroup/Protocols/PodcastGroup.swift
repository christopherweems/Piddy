//
//  PodcastGroup.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import MixedGroup

public protocol PodcastGroup {
    typealias Body = MixedGroup<Podcast>
    var body: Body { get }
    
}
