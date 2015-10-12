//
//  ViewController.swift
//  ShahrMa
//
//  Created by Morteza on 10/6/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import UIKit
import Auk
class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/11.jpg")
        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/22.jpg")
        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/33.jpg")
        scrollView.auk.startAutoScroll(delaySeconds: 3.0, forward: true, cycle: true, animated: true)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

