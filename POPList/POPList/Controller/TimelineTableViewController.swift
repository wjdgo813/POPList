//
//  TimelineTableViewController.swift
//  POPList
//
//  Created by Haehyeon Jeong on 2018. 7. 8..
//  Copyright © 2018년 Haehyeon Jeong. All rights reserved.
//

import UIKit


class TimelineTableViewController: UITableViewController,ContainContents,CanShowDetail {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = timelineTitle
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfContents
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let content = contents[indexPath.row]
        let cell : TimelineTableViewCell
        let cellIdentifier = "reuseIdentifier"
        
        if let reuseCell : TimelineTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TimelineTableViewCell{
            cell = reuseCell
            cell.content = content
        }else{
            cell = TimelineTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier,content : content)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showDetailView(content:contents[indexPath.row])
    }

}
