//
//  WebDestination.swift
//  
//
//  Created by Christopher Weems on 11/24/20.
//

import Foundation

public enum WebDestination {
    case authority(_ siteAuthority: String, useHTTPS: Bool = true)
    case page(_ pageURL: String)
    
}
