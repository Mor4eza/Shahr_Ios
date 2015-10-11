//
//  HTTPGetBooMarkJson.swift
//  ShahrMa
//
//  Created by parsa on 10/10/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class HTTPGetBookMarkJson {
 
    
    
    let urlArea : String = "http://test.shahrma.com/api/ApiGiveBookMark"
    var errorcode : Int = 0
    
    var Id: [Int] = []
    var market: [String] = []
    var code: [String] = []
    var phone: [String] = []
    var mobile: [String] = []
    var fax: [String] = []
    var email: [String] = []
    var businessowner: [String] = []
    var address: [String] = []
    var description: [String] = []
    var startdate: [String] = []
    var expirationdate: [String] = []
    var inactive: [String] = []
    var subset: [String] = []
    var src: [String] = []
    var subsetid: [Int] = []
    var longitude: [Double] = []
    var latitude: [Double] = []
    var areaid: [Int] = []
    var area1: [String] = []
    var user: [String] = []
    var userid: [Int] = []
    var field1: [Int] = []
    var field2: [Int] = []
    var field3: [Int] = []
    var field4: [Int] = []
    var field5: [Int] = []
    var field6: [Int] = []
    var field7: [Int] = []
    var ratecount: [Int] = []
    var ratevalue: [Double] = []
    
    var discountid: [Int] = []
    var discounttext: [String] = []
    var discountimage: [String] = []
    var discountstartdate: [String] = []
    var discountexpirationdate: [String] = []
    var discountdescription: [String] = []
    var discountpercent: [String] = []
    var discountbusinessid: [Int] = []
    
    var likediscount: [Int] = []
    var dislikediscount: [Int] = []
    
    
    
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
        
        for jsonObject in anyObj as! Array<AnyObject>{
            

            address.append((jsonObject as! NSDictionary)["Address"] as! String )
            area1.append((jsonObject as! NSDictionary)["Area"] as! String )
            areaid.append((jsonObject as! NSDictionary)["AreaId"] as! Int )
            businessowner.append((jsonObject as! NSDictionary)["BusinessOwner"] as! String )
            code.append((jsonObject as! NSDictionary)["Code"] as! String )
            description.append((jsonObject as! NSDictionary)["Description"] as! String )
            email.append((jsonObject as! NSDictionary)["Email"] as! String )
            expirationdate.append((jsonObject as! NSDictionary)["ExpirationDate"] as! String )
            fax.append((jsonObject as! NSDictionary)["Fax"] as! String )
            field1.append((jsonObject as! NSDictionary)["Field1"] as! Int )
            field2.append((jsonObject as! NSDictionary)["Field2"] as! Int )
            field3.append((jsonObject as! NSDictionary)["Field3"] as! Int )
            field4.append((jsonObject as! NSDictionary)["Field4"] as! Int )
            field5.append((jsonObject as! NSDictionary)["Field5"] as! Int )
            field6.append((jsonObject as! NSDictionary)["Field6"] as! Int )
            field7.append((jsonObject as! NSDictionary)["Field7"] as! Int )
            Id.append((jsonObject as! NSDictionary)["Id"] as! Int )
            inactive.append((jsonObject as! NSDictionary)["Inactive"] as! String )
            latitude.append((jsonObject as! NSDictionary)["Latitude"] as! Double )
            longitude.append((jsonObject as! NSDictionary)["Longitude"] as! Double )
            market.append((jsonObject as! NSDictionary)["Market"] as! String )
            mobile.append((jsonObject as! NSDictionary)["Mobile"] as! String )
            phone.append((jsonObject as! NSDictionary)["Phone"] as! String)
            startdate.append((jsonObject as! NSDictionary)["StartDate"] as! String )
            subset.append((jsonObject as! NSDictionary)["Subset"] as! String )
            subsetid.append((jsonObject as! NSDictionary)["SubsetId"] as! Int )
            user.append((jsonObject as! NSDictionary)["User"] as! String )
            userid.append((jsonObject as! NSDictionary)["UserId"] as! Int )
            src.append((jsonObject as! NSDictionary)["Src"] as! String )
            
            ratecount.append((jsonObject as! NSDictionary)["RateCount"] as! Int )
            ratevalue.append((jsonObject as! NSDictionary)["RateAverage"] as! Double )

            
            
        }// for
        
    }//func
    
}