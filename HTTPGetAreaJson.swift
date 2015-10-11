//
//  HTTPGetAreaJson.swift
//  ShahrMa
//
//  Created by parsa on 10/10/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation


class HTTPGetAreaJson
{
    

    
    let urlArea : String = "http://test.shahrma.com/api/apigivearea"
    var errorcode : Int = 0
    var id : [Int] = []
    var city : [Int] = []
    var name : [String] = []
    
    func onPreExecute(){
        
    }
    
    func doInBackground(){
        //important
        onPostExecute()
        getStreamFromURL(urlArea,method: "GET")
        onPostExecute()
    }
    
    func onPostExecute(){
        
        //Last
    }
    
    
    func getStreamFromURL(url: String , method: String){
        
        // get json of url address
        
        var errorr: NSError?
        var request : NSMutableURLRequest = NSMutableURLRequest()
        request.URL = NSURL(string: url)
        request.HTTPMethod = method
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) {(data, response , error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
            
            var jsonStringAsArray = NSString(data: data, encoding: NSUTF8StringEncoding)
            if let statusCode = (response as? NSHTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                    var data: NSData = jsonStringAsArray!.dataUsingEncoding(NSUTF8StringEncoding)!
                    var error: NSError?
                    
                    // convert NSData to 'AnyObject'
                    if let anyObj: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(0),
                        error: &errorr){
                            if statusCode == 200{
                                self.parseJson(anyObj!)
                        }
                        else {
                            println("JSON format error, key value1 not defined")
                        }
                    }
                        else {
                            println("JSON parsing error: ")
                        }
                    }
                    else { // status code other than 200
                            println("HTTP Error \(statusCode)")
                    }
                }
                    else { // No HTTP response available at all, couldn't hit server
                    println("Network Error: ")
                    }
                
            
            
            
        }
        task.resume()
        
    }
    
    func streamToString(){
        
        // request convert to stream
        
    }
    
    func parseJson(anyObj: AnyObject) {
        println("ssssssssssssssssssssss")
        
            
            for jsonObject in anyObj as! Array<AnyObject>{
                
                
               let ids = (jsonObject as! NSDictionary)["Id"] as! Int
               let namearea = (jsonObject as! NSDictionary)["AreaName"] as! String
                id.append(ids)
                city.append((jsonObject as! NSDictionary)["CityId"] as! Int)
                name.append(namearea)
                println("Id : \(ids)")
                println("Name : \(name)")
                
        
            }// for
        
    }//func

    
    
}