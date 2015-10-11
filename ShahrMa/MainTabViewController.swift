//
//  MainTabViewController.swift
//  ShahrMa
//
//  Created by Morteza on 10/7/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {

    @IBOutlet weak var menu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu.target = self.revealViewController()
        menu.action = Selector("revealToggle:")

        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        // Do any additional setup after loading the view.
        
        
        
        var db = DataBase()
        db.CreateOropen()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
