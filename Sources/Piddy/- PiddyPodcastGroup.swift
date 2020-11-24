//
//  PiddyPodcastGroup.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import MixedGroup
import PodcastGroup
import unstandard

public enum PiddyPodcastGroup: PodcastGroup, CaseIterable {
    case comedy
    case culture
    case design
    case horror
    case music
    case politics
    case psychology
    case science
    case sports
    case technology
    case trueCrime
    case videoGames
    
    public var body: Body {
        switch self {
        case .comedy:
            Comedy()
            
        case .culture:
            Culture()
            
        case .design:
            Design()
            
        case .horror:
            Horror()
            
        case .music:
            Music()
            
        case .politics:
            Politics()
            
        case .psychology:
            Psychology()
            
        case .science:
            Science()
            
        case .sports:
            Sports()
            
        case .technology:
            Technology()
            
        case .trueCrime:
            TrueCrime()
            
        case .videoGames:
            VideoGames()
            
        }
    }
    
}

fileprivate extension MixedGroupBuilder {
    static func buildExpression<Group: PodcastGroup>(_ podcastGroup: Group) -> MixedGroup<Podcast> {
        podcastGroup.body
    }
    
}
