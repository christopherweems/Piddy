//
//  Podcast.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation

public struct Podcast {
    public struct Properties {
        var title: String
        var abbreviations = [String]()
        var hosts = [String]()
        
    }
    
    internal var properties: Properties
    
    fileprivate subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        get { properties[keyPath: propertyKeyPath] }
        set { properties[keyPath: propertyKeyPath] = newValue }
    }
    
    public init(title: String) {
        properties = Properties(title: title)
        
    }
    
}


// MARK: -

extension Podcast: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self.init(title: value)
        
    }
    
}


// MARK: - Property Setters

public extension Podcast {
    func title(_ title: String) -> Self {
        var new = self
        new[\.title] = title
        return new
    }
    
    func abbreviation(_ abbreviations: String...) -> Self {
        self._abbreviation(abbreviations)
    }
    
    func host(_ hosts: String...) -> Self {
        self._host(hosts)
    }
    
    fileprivate func _abbreviation(_ abbreviations: [String]) -> Self {
        var new = self
        new[\.abbreviations] = abbreviations
        return new
    }
    
    fileprivate func _host(_ hosts: [String]) -> Self {
        var new = self
        new[\.hosts].append(contentsOf: hosts)
        return new
    }
    
}

public extension String {
    func title(_ title: String) -> Podcast {
        self.as(Podcast.self)
            .title(title)
    }
    
    func abbreviation(_ abbreviations: String...) -> Podcast {
        self.as(Podcast.self)
            ._abbreviation(abbreviations)
    }
    
    func host(_ hosts: String...) -> Podcast {
        self.as(Podcast.self)
            ._host(hosts)
    }
    
}
