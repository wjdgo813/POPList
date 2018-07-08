//
//  TimelineContents.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation


class TimelineContentObject{
    static let shared : TimelineContentObject = TimelineContentObject()
    var contents : [Content]
    
    init() {
        var contentsArr : [Content] = [Content]()
        let notes:[String] = ["apple","banana","grape"]
        
        for i in 0...3{
            var content : Content?
            if let path : String = Bundle.main.path(forResource: "\(i)", ofType: "jpg"){
                content = Content(type: .image, URLString: path, note: notes[i])
            }else if let path : String = Bundle.main.path(forResource: "\(i)", ofType: "m4v"){
                content = Content(type: .vod, URLString: path, note: notes[i])
            }
            
            if let content = content{
                contentsArr.append(content)
            }
        }
        self.contents = contentsArr
    }
}
