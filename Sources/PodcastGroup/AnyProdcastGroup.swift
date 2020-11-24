//
//  AnyPodcastGroup.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import MixedGroup

public struct AnyPodcastGroup: PodcastGroup {
    public let body: Body
    
    public init<Group: PodcastGroup>(other: Group) {
        body = other.body
        
    }
    
}
