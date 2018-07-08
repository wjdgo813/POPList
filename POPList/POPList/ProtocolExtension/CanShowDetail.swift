//
//  CanShowDetail.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import Foundation
import UIKit

protocol CanShowDetail {
    func showDetailView(content: Content)
    var navigationController: UINavigationController? { get }
}

extension CanShowDetail{
    func showDetailView(content:Content){
        
    }
}
