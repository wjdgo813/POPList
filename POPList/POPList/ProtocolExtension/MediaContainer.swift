//
//  MediaContents.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

protocol MediaContainer:class{
    var content:Content?{get set}
    var media : ContentPresentable {get}
    var note : UILabel{get set}
    
    var videoLayer : AVPlayerLayer {get}
    var mediaImageView : UIImageView {get}
    
    func contentChanged()
}

extension MediaContainer{
    func contentChanged(){
        guard let content = content else {
            mediaImageView.isHidden = true
            videoLayer.isHidden = true
            
            mediaImageView.image = nil
            videoLayer.player = nil
            
            return
        }
        
        switch content.type {
        case .image:
            mediaImageView.isHidden = false
            videoLayer.isHidden = true
            
            if let image : UIImage = UIImage(contentsOfFile: content.URLString){
                mediaImageView.image = image
            }
            break
        case .vod:
            mediaImageView.isHidden = true
            videoLayer.isHidden = false
            
            guard let videoURL : URL = URL(fileURLWithPath: content.URLString) else { return }
            guard let player : AVPlayer = AVPlayer(url: videoURL) else { return }
            
            videoLayer.player = player
            
            break
        }
        note.text = content.note
    }
    
    var media : ContentPresentable {
        get{
            switch content?.type {
            case .image?:
                return mediaImageView
            case .vod?:
                return videoLayer
            case .none:
                return mediaImageView
            }
        }
    }
}
