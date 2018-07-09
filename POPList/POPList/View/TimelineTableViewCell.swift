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
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
