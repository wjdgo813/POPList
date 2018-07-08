//
//  TimelineTableViewCell.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {
    
    var content : Content?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, content: Content) {
        self.content = content
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
