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


// MARK: - Property Setters

public extension Podcast {
    func title(_ title: String) -> Self {
        var new = self
        new[\.title] = title
        return new
    }
    
    func host(_ hosts: String...) -> Self {
        var new = self
        new[\.hosts].append(contentsOf: hosts)
        return new
    }
    
}
