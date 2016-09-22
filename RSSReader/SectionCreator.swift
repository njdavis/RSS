//
//  SectionCreator.swift
//  RSSReader
//
//  Created by Noah Davis on 8/6/16.
//  Copyright © 2016 Noah Davis. All rights reserved.
//

import Foundation

class SectionCreator {
    
    var returnSourceTitles = ["Action", "Drama", "Science Fiction", "Kids", "Horror"]

    func addSource (_ title: Array<String>) -> Array<String> {
        returnSourceTitles += title
        return returnSourceTitles
    }    
    
}

