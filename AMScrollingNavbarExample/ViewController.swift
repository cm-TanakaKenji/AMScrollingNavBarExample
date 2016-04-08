//
//  ViewController.swift
//  AMScrollingNavbarExample
//
//  Created by tanaka.kenji on 2016/04/06.
//  Copyright © 2016年 tanaka.kenji. All rights reserved.
//

import UIKit
import AMScrollingNavbar

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchBar = UISearchBar()
        searchBar.tintColor = UIColor.blackColor()
        searchBar.placeholder = "検索"
        
        navigationItem.titleView = searchBar
        navigationItem.titleView?.frame = CGRectMake(0, 0, view.frame.size.width, 44)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = navigationController as? ScrollingNavigationController {
            navigationController.followScrollView(tableView, delay: 50.0)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    }


}

