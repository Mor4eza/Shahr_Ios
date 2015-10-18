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

        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/a1.jpg")
        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/a2.jpg")
        scrollView.auk.show(url: "http://www.shahrma.com/app/Advertisment/a3.jpg")
        scrollView.auk.startAutoScroll(delaySeconds: 3.0, forward: true, cycle: true, animated: true)
        scrollView.auk.settings.contentMode = UIViewContentMode.ScaleToFill
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

