//
//  newsSource.swift
//  RSSReader
//
//  Created by Noah Davis on 9/13/16.
//  Copyright © 2016 Noah Davis. All rights reserved.
//

import Foundation
import AlamofireRSSParser


class NewsSoure{
    
    var URL:String
    var photo:String
    var blurb:String
    
    // Initialize Class
    init(name: String){
        self.URL = name
        self.photo = "This is an initial photo URL"
        self.blurb = "This is initial blurb data"
    }
    
}

