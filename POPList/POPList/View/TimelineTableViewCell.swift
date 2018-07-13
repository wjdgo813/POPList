//
//  TimelineTableViewCell.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import UIKit
import AVFoundation


class TimelineTableViewCell: UITableViewCell,MediaContainer {
    lazy var note: UILabel = UILabel()
    lazy var videoLayer: AVPlayerLayer = AVPlayerLayer()
    lazy var mediaImageView: UIImageView = UIImageView()
    
    var content : Content? {
        didSet{
            self.contentChanged()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, content: Content) {
        self.content = content
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentChanged()
        
        let cellHeight : CGFloat = 80
        let mediaRect : CGRect = CGRect(x: 5, y: 5, width: cellHeight - 10, height: cellHeight - 10)
        mediaImageView.layout(in: mediaRect)
        videoLayer.layout(in: mediaRect)
        
        mediaImageView.contentMode = UIViewContentMode.scaleAspectFit
        self.addSubview(mediaImageView)
        self.layer.addSublayer(videoLayer)
        
        var noteRect : CGRect = self.bounds
        noteRect.origin.x = mediaRect.size.width + 10
        noteRect.size.width -= noteRect.origin.x
        noteRect.size.height = cellHeight
        
        note.layout(in: noteRect)
        
        self.addSubview(note)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
