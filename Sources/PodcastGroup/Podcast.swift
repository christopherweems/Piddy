//
//  Podcast.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation

public struct Podcast {
    public struct Properties {
        public var title: String
        public var subtitle: Subtitle?
        public var abbreviations = [String]()
        public var producers = [String]()
        public var hosts = [String]()
        
        public var destination: WebDestination?
        
    }
    
    internal var properties: Properties
    
    fileprivate subscript<V>(propertyKeyPath: WritableKeyPath<Properties, V>) -> V {
        get { properties[keyPath: propertyKeyPath] }
        set { properties[keyPath: propertyKeyPath] = newValue }
    }
    
    public subscript<V>(propertyKeyPath: KeyPath<Properties, V>) -> V {
        properties[keyPath: propertyKeyPath]
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
    
    func subtitle(_ subtitle: String) -> Self {
        var new = self
        new[\.subtitle] = .verbatim(subtitle)
        return new
    }
    
    func subtitle(_ subtitle: Subtitle) -> Self {
        var new = self
        new[\.subtitle] = subtitle
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
    
    func subtitle(_ subtitle: String) -> Podcast {
        self.as(Podcast.self)
            .subtitle(subtitle)
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


// MARK: -

public extension Podcast {
    func network(_ networks: String...) -> Self {
        self._network(networks)
    }
    
    func _network(_ networks: [String]) -> Self {
        var new = self
        new[\.producers].append(contentsOf: networks)
        return new
    }
    
}

public extension String {
    func network(_ networks: String...) -> Podcast {
        self.as(Podcast.self)
            ._network(networks)
    }
    
}


// MARK: -

public extension Podcast {
    func url(authority: String, useHTTPS: Bool = true) -> Podcast {
        var new = self
        new[\.destination] = .authority(authority, useHTTPS: useHTTPS)
        return new
    }
    
    func url(_ urlString: String) -> Podcast {
        var new = self
        new[\.destination] = .page(urlString)
        return new
    }
    
}

public extension String {
    func url(authority: String, useHTTPS: Bool = true) -> Podcast {
        self.as(Podcast.self)
            .url(authority: authority)
    }
    
    func url(_ urlString: String) -> Podcast {
        self.as(Podcast.self)
            .url(urlString)
    }
    
}
