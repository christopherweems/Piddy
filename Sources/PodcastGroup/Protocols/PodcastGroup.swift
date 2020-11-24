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
    @MixedGroupBuilder<Podcast> var body: Body { get }
    
}

public extension MixedGroupBuilder {
    static func buildExpression(_ podcastTitle: String) -> MixedGroup<Podcast> {
        let podcast = Podcast(title: podcastTitle)
        return .init(elements: [podcast])
    }
    
}
