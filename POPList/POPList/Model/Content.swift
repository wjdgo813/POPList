//
//  Content.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation

struct Content {
    enum MediaType {
        case image,vod
    }
    
    var type : MediaType
    var URLString : String
    var note : String
}
