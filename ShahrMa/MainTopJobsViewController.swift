//
//  MainTopJobsViewController.swift
//  ShahrMa
//
//  Created by Morteza on 10/7/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import UIKit

class MainTopJobsViewController: UIViewController {

    @IBOutlet var slideImages : UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var imgList :NSMutableArray = []
        
        var tap = UITapGestureRecognizer(target:self,
            action:Selector("imageClick:"))
        slideImages.addGestureRecognizer(tap)
        slideImages.userInteractionEnabled = true
        var image1 = UIImage(named: "img1")
        var image2 = UIImage(named: "img2")
        imgList.addObject(image1!)
        imgList.addObject(image2!)
        slideImages.animationImages = imgList as [AnyObject]
        slideImages.animationDuration = 3.0
        slideImages.startAnimating()
   
    }
    func imageClick(img: UIImageView){
       
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
