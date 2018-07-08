//
//  ContentContains.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation


protocol ContainContents {
    var contents: [Content] { get }
    var numberOfContents: Int { get }
}

extension ContainContents{
    var contents:[Content]  {
        return TimelineContentObject.shared.contents
    }
    
    var numberOfContents: Int  {
        return contents.count
    }
}


