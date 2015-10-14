//
//  HTTPPostMemberJson.swift
//  ShahrMa
//
//  Created by parsa on 10/11/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class HTTPPostMemberJson {
        
    
        func JSONMember()-> String {
            return ""
        }
    
        func onPreExecute(){
            
        }
        
        func doInBackground(){
            
            
            
            
            let strjson = "{\"Id\":0,\"Name\":\"mortezaAli\",\"Mobile\":\"0936111111\",\"Email\":\"mortezaAli\",\"Age\":20,\"Sex\":true,\"UserName\":\"mori\",\"Password\":\"mori\",\"CityId\":68}"
            let jsonMember = ["Id":0,"Name":"mortezaAli","Mobile":"0936111111","Email":"mortezaAli@gmail.com","Age":20,"Sex":true,"UserName":"mori","Password":"mori","CityId":68]
            
            println(strjson)
            //create the url with NSURL
            let url = NSURL(string: "http://test.shahrma.com/api/apitakeMembers") //change the url
            
            //create the session object
            var session = NSURLSession.sharedSession()
            
            //now create the NSMutableRequest object using the url object
            let request = NSMutableURLRequest(URL: url!)
            request.HTTPMethod = "POST" //set http method as POST
            
            var err: NSError?
            println((strjson as NSString).dataUsingEncoding(NSUTF8StringEncoding))
            //request.HTTPBody = (strjson as NSString).dataUsingEncoding(NSUTF8StringEncoding)
            
            request.HTTPBody = NSJSONSerialization.dataWithJSONObject(jsonMember, options: nil, error: &err) // pass dictionary to nsdata object and set it as request body
            
            
            println(strjson.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true))
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            //create dataTask using the session object to send data to the server
            var task = session.dataTaskWithRequest(request, completionHandler: {data, response, error -> Void in
                println("Response: \(response)")
                var strData = NSString(data: data, encoding: NSUTF8StringEncoding)
                println("Body: \(strData)")
                var err: NSError?
                var json = NSJSONSerialization.JSONObjectWithData(data, options: .MutableLeaves, error: &err) as? NSDictionary
                
                // Did the JSONObjectWithData constructor return an error? If so, log the error to the console
                if(err != nil) {
                    println(err!.localizedDescription)
                    let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
                    println("Error could not parse JSON: '\(jsonStr)'")
                }
                else {
                    // The JSONObjectWithData constructor didn't return an error. But, we should still
                    // check and make sure that json has a value using optional binding.
                    if let parseJSON = json {
                        // Okay, the parsedJSON is here, let's get the value for 'success' out of it
                        var success = parseJSON["success"] as? Int
                        println("Succes: \(success)")
                    }
                    else {
                        // Woa, okay the json object was nil, something went worng. Maybe the server isn't running?
                        let jsonStr = NSString(data: data, encoding: NSUTF8StringEncoding)
                        println("Error could not parse JSON: \(jsonStr)")
                    }
                }
            })
            
            task.resume()

        }
        
        func onPostExecute(){
            
        }
    
    
}