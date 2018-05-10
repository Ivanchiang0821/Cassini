//
//  DemoURLs.swift
//  Cassini
//
//  Created by IvanChiang on 2018/5/10.
//  Copyright © 2018 IvanChiang. All rights reserved.
//

import Foundation

struct DemoURLs {
    static let stanford = Bundle.main.url(forResource: "oval", withExtension: "jpg")
    static let stanford1 = URL(string: "https://en.wikipedia.org/wiki/File:Stanford_Oval_May_2011_panorama.jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAUrlStrings = [
            "Cassini" : "https://saturn.jpl.nasa.gov/system/resources/detail_files/7744_Entering_atmosphere_2.jpg",
            "Earth" : "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/618486main_earth_full.jpg",
            "Saturn" : "https://www.nasa.gov/sites/default/files/styles/full_width/public/images/365640main_PIA11141_full.jpg?itok=cWQInduW"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAUrlStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
