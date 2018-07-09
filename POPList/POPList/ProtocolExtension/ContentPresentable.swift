//
//  ContentPresentable.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

protocol ContentPresentable:class ,Layout{
    var canPresentContent : Bool {get}
}

extension ContentPresentable{
    var canPresentContent : Bool{
        return true
    }
}

protocol Layout {
    var frame:CGRect{get set}
    mutating func layout(in rect:CGRect)
}

extension Layout {
    mutating func layout(in rect:CGRect){
        self.frame = rect
    }
}




extension UIImageView : ContentPresentable{}
extension AVPlayerLayer : ContentPresentable{}
extension UILabel : Layout{}

