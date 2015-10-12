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
            
//           
//           let strjson = "{\"Id\":0,\"Name\":\"MohammadAli\",\"Mobile\":\"093566666\",\"Email\":\"\",\"Age\":20,\"Sex\":true,\"UserName\":\"maammad\",\"Password\":\"111111\",\"CityId\":68}"
//            let jsonMember = ["Id":0,"Name":"mohammadali","Mobile":"0935666666","Email":"","Age":24,"Sex":true,"UserName":"maammad","Password":"111111","CityId":68]
//            
//            println(strjson)
//            //create the url with NSURL
//            let url = NSURL(string: "http://test.shahrma.com/api/apitakeMembers") //change the url
//            
//            //create the session object
//            var session = NSURLSession.sharedSession()
//            
//            //now create the NSMutableRequest object using the url object
//            let request = NSMutableURLRequest(URL: url!)
//            request.HTTPMethod = "POST" //set http method as POST
//            
//            var err: NSError?
//            println((strjson as NSString).dataUsingEncoding(NSUTF8StringEncoding))
//            //request.HTTPBody = (strjson as NSString).dataUsingEncoding(NSUTF8StringEncoding)
//            
//            request.HTTPBody = NSJSONSerialization.dataWithJSONObject(jsonMember, options: NSJSONWritingOptions.PrettyPrinted, error: &err) // pass dictionary to nsdata object and set it as request body
//            
//            
//            println(strjson.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true))
//            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//            request.addValue("application/json", forHTTPHeaderField: "Accept")
//            
//            //create dataTask using the session object to send data to the server
//            var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
//                println("Response: \(response)")
//                var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
//                println("Body: \(strData)")
//                var err: NSError?
//                var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as? NSDictionary
//                
//                // Did the JSONObjectWithData constructor return an error? If so, log the error to the console
//                if(err != nil) {
//                    println(err!.localizedDescription)
//                    let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
//                    println("Error could not parse JSON: '\(jsonStr)'")
//                }
//                else {
//                    // The JSONObjectWithData constructor didn't return an error. But, we should still
//                    // check and make sure that json has a value using optional binding.
//                    if let parseJSON = json {
//                        // Okay, the parsedJSON is here, let's get the value for 'success' out of it
//                        var success = parseJSON["success"] as? Int
//                        println("Succes: \(success)")
//                    }
//                    else {
//                        // Woa, okay the json object was nil, something went worng. Maybe the server isn't running?
//                        let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
//                        println("Error could not parse JSON: \(jsonStr)")
//                    }
//                }
//            })
//            
//            task.resume()
//
//            
        default :
            return
        }
    }
    
    func jobs() {
        let settingsViewController = storyboard?.instantiateViewControllerWithIdentifier("JobsTableViewController") as? UIViewController
        presentViewController(settingsViewController!, animated: true, completion: nil)
    }

}


















