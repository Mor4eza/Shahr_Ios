//
//  MenuTableView.swift
//  ShahrMa
//
//  Created by Morteza on 10/6/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class MenuTableView: UITableViewController {
    
    var menuItem = [String]()
    var menuImages = [String]()
    
    override func viewDidLoad() {
        menuItem = ["مشاغل","اطراف من","کسب و کار من","حساب من","نشانه گذاری شده ها","شهرمن","علایق من","تنظیمات","درباره ما"]
        
        menuImages = ["menu1.png","menu2.png","menu3.png","menu4.png","menu5.png","menu6.png","menu7.png","menu8.png","menu9.png",]
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return menuItem.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell",forIndexPath: indexPath)
            as! UITableViewCell
        cell.textLabel?.text = menuItem[indexPath.row]
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        cell.imageView?.image = UIImage(named: menuImages[indexPath.row])
        
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.row{
        case 0:
            jobs()
            //declare parameter as a dictionary which contains string as key and value combination.
            
            
        default :
            return
        }
    }
    
    func jobs() {
        let settingsViewController = storyboard?.instantiateViewControllerWithIdentifier("JobsTableViewController") as? UIViewController
        presentViewController(settingsViewController!, animated: true, completion: nil)
    }

}


















