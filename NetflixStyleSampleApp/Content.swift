//
//  Content.swift
//  NetflixStyleSampleApp
//
//  Created by David Yoon on 2021/12/12.
//

import UIKit


struct Content: Decodable {
    let sectionType: SectionType
    let sectionName: String
    let contentItem: [Item]
    
    enum SectionType: String, Decodable {
        case basic
        case main
        case large
        case rank
    }
    
}

struct Item: Decodable {
    let desciption: String
    let imageName: String
    
    var image: UIImage {
        return UIImage(named: imageName) ?? UIImage()
    }
}



