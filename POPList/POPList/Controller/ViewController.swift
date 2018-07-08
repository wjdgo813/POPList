//
//  ViewController.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import UIKit
enum ListViewMode: String {
    case Table, Collection
}
let timelineTitle = "Timeline"
class ViewController: UINavigationController {

    private var tableViewController : UITableViewController?
    private var collectionViewController : UICollectionViewController?
    private var listMode : ListViewMode = .Table{
        didSet{
            viewModeChanged()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModeChanged()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func viewModeChanged(){
        var rootViewController : UIViewController?
        switch listMode {
        case .Table:
            if let viewController = tableViewController {
                rootViewController = viewController
            }else{
                
            }
            break
        case .Collection:
            
            break
        default:
            break
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }


}

