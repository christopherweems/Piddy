//
//  Podcast.swift
//  
//
//  Created by Christopher Weems on 11/23/20.
//

import Foundation
import unstandard

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

public extension Podcast.Properties {
    private static let listFormatter = ListFormatter()
    
    var subtitleText: String? {
        guard let subtitle = subtitle else {
            func titleContainsAll(_ elements: [String]) -> Bool {
                elements.allSatisfy(title.contains)
            }
            
            let elements = hosts.if { !titleContainsAll($0) } ?? producers
            return Self.listFormatter.string(from: elements).notEmpty
        }
        
        switch subtitle {
        case .verbatim(let verbatim):
            return verbatim
            
        case .with(.first):
            return hosts.first
            
        case .with(.all):
            let hostsAsList = Self.listFormatter.string(from: hosts) ?? ""
            return "\(hostsAsList)"
        }
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
    func title(_ title: String) -> Podcast {
        var new = self
        new[\.title] = title
        return new
    }
    
    func abbreviation(_ abbreviations: String...) -> Podcast {
        self._abbreviation(abbreviations)
    }
    
    func host(_ hosts: String...) -> Podcast {
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


// MARK: -

public extension Podcast {
    func subtitle(_ subtitle: String) -> Podcast {
        var new = self
        new[\.subtitle] = .verbatim(subtitle)
        return new
    }
    
    func subtitle(_ subtitle: Subtitle) -> Podcast {
        var new = self
        new[\.subtitle] = subtitle
        return new
    }
    
    func with(host: String) -> Podcast {
        assert(self[\.hosts].isEmpty, "podcast with host in subtitle must be first specified host")
        var new = self
        new[\.hosts].append(host)
        new[\.subtitle] = .with(.first)
        return new
    }
    
}

public extension String {
    func subtitle(_ subtitle: String) -> Podcast {
        self.as(Podcast.self)
            .subtitle(subtitle)
    }
    
    func subtitle(_ subtitle: Subtitle) -> Podcast {
        self.as(Podcast.self)
            .subtitle(subtitle)
    }
    
    func with(host: String) -> Podcast {
        self.as(Podcast.self)
            .with(host: host)
    }
    
}


// MARK: -

public extension Podcast {
    func network(_ networks: String...) -> Podcast {
        self._producer(networks)
    }
    
    func producer(_ producers: String...) -> Podcast {
        self._producer(producers)
    }
    
    fileprivate func _producer(_ producers: [String]) -> Self {
        var new = self
        new[\.producers].append(contentsOf: producers)
        return new
    }
    
}

public extension String {
    func network(_ networks: String...) -> Podcast {
        self.as(Podcast.self)
            ._producer(networks)
    }
    
    func producer(_ producers: String...) -> Podcast {
        self.as(Podcast.self)
            ._producer(producers)
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
