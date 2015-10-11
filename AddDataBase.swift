//
//  AddDataBase.swift
//  ShahrMa
//
//  Created by parsa on 10/3/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class AddDataBase : DataBase  {
    

    
    
    
    //create database tables
    func onCreate()
    {
        
    }
    
    //update database
    func onUpgrade(){
        
    }
    
    
    
    func  Add_subset(id: Int ,Subsetname: String , CollectionId: Int) {
        
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask,true)
        let docsDir = dirPaths[0] as! String
        databasePath = docsDir.stringByAppendingPathComponent("Shahrma.db")
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  Subset VALUES (\(id), '\(Subsetname)', \(CollectionId))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    func Add_subset_Product(id: Int,subsetname: String,collectionid: Int) {
    
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  Product_Subset VALUES (\(id), '\(subsetname)', \(collectionid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    func Add_Value_Product(id: Int, ValueName: String , IdProperty : Int) {
    
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  Value_Product VALUES (\(id), '\(ValueName)', \(IdProperty))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    func Add_Property_Product(id: Int, PropertyName: String , Type : Int) {
        
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  Property_Product VALUES (\(id), '\(PropertyName)', \(Type))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
   
    func Add_LikeDisCount(LikeCount : Boolean , MemberId : Int,DisCountId : Int, BusinessId : Int){
    
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  LikeDisCount VALUES (\(LikeCount), \(MemberId), \(DisCountId), \(BusinessId))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    

    func Add_DisCount(id : Int,text :String,image :String,startdate :String,expirationdate :String,description :String,percent: String,businessid: Int,like: Int,dislike: Int){
    
        
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  DisCount VALUES (\(id), '\(text)', '\(image)', '\(startdate)', '\(expirationdate)','\(description)','\(percent)',\(businessid),\(like),\(dislike))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    func Update_DisCount(id : Int,businessid : Int,like : Int,dislike : Int)
    {
    
    }
    
    func Add_DisCountMember(id: Int,text: String,image : String,startdate: String,expirationdate: String,description: String,percent : String,businessid : Int){
    
        
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  DisCountMember VALUES (\(id), '\(text)', '\(image)', '\(startdate)', '\(expirationdate)','\(description)','\(percent)',\(businessid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    func Add_Notification(id: Int,OpinionType: Int,erja: Int,ExecutionTime: Boolean,Description: String,ExpirationDate: String,City: String,CityId: Int,Subset: String,SubsetId: Int,title: String){
    
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  ShowNotification VALUES (\(id), \(OpinionType), \(erja), \(ExecutionTime), '\(Description)','\(ExpirationDate)','\(City)',\(CityId),'\(Subset)',\(SubsetId),'\(title)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    
    func Add_collection(id: Int,collectionname : String) {
    
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask,true)
        let docsDir = dirPaths[0] as! String
        databasePath = docsDir.stringByAppendingPathComponent("Shahrma.db")
        let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            
            let insertSQL = "INSERT INTO  Collection VALUES (\(id), '\(collectionname)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    
    func Add_collection_Product(id: Int,collectionname: String) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Product_Collection VALUES (\(id), '\(collectionname)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    
    
    func Add_member(id:Int,name: String,email: String,mobile: String,age: Int,sex: Boolean,username: String,password: String,cityid: Int){
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Member VALUES (\(id), '\(name)','\(email)','\(mobile)',\(age),\(sex),'\(username)','\(password)',\(cityid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    func Add_opinion(id: Int,description: String,date: String,erja: Int,countlike: Int,countdislike: Int,membername: String){
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Opinion VALUES (\(id), '\(description)','\(date)',\(erja),\(countlike),\(countdislike),'\(membername)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    
    
    
    func Add_Search(id: Int,market: String, code: String, phone: String,mobile : String,fax: String,email: String,businessowner : String,address: String,description : String,startdate : String,expirationdate:  String,inactive : String ,subset: String, subsetid: Int,latitude: Double,longitude: Double, areaid: Int,area : String,user: String,cityid: Int,userid: Int,field1: Int,field2: Int,field3: Int,field4: Int,field5: Int,field6: Int,field7: Int,ratecount: Int, ratevalue: Double,src: String) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Search VALUES (\(id), '\(code)','\(market)','\(phone)','\(mobile)','\(fax)','\(email)','\(businessowner)','\(address)','\(description)','\(startdate)','\(expirationdate)','\(inactive)','\(subset)',\(subsetid),\(latitude),\(longitude),\(areaid),'\(area)','\(user)',\(cityid),\(userid),\(field1),\(field2),\(field3),\(field4),\(field5),\(field6),\(field7),\(ratecount),\(ratevalue),'\(src)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    func Add_businessDisCount(id: Int,market: String, code: String, phone: String,mobile : String,fax: String,email: String,businessowner : String,address: String,description : String,startdate : String,expirationdate:  String,inactive : String ,subset: String, subsetid: Int,latitude: Double,longitude: Double, areaid: Int,area : String,user: String,cityid: Int,userid: Int,field1: Int,field2: Int,field3: Int,field4: Int,field5: Int,field6: Int,field7: Int,ratecount: Int, ratevalue: Double,src: String) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Business_DisCount VALUES (\(id), '\(code)','\(market)','\(phone)','\(mobile)','\(fax)','\(email)','\(businessowner)','\(address)','\(description)','\(startdate)','\(expirationdate)','\(inactive)','\(subset)',\(subsetid),\(latitude),\(longitude),\(areaid),'\(area)','\(user)',\(cityid),\(userid),\(field1),\(field2),\(field3),\(field4),\(field5),\(field6),\(field7),\(ratecount),\(ratevalue),'\(src)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    
    func Add_businessTops(id: Int,market: String, code: String, phone: String,mobile : String,fax: String,email: String,businessowner : String,address: String,description : String,startdate : String,expirationdate:  String,inactive : String ,subset: String, subsetid: Int,latitude: Double,longitude: Double, areaid: Int,area : String,user: String,cityid: Int,userid: Int,field1: Int,field2: Int,field3: Int,field4: Int,field5: Int,field6: Int,field7: Int,ratecount: Int, ratevalue: Double,src: String) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Business_Tops VALUES (\(id), '\(code)','\(market)','\(phone)','\(mobile)','\(fax)','\(email)','\(businessowner)','\(address)','\(description)','\(startdate)','\(expirationdate)','\(inactive)','\(subset)',\(subsetid),\(latitude),\(longitude),\(areaid),'\(area)','\(user)',\(cityid),\(userid),\(field1),\(field2),\(field3),\(field4),\(field5),\(field6),\(field7),\(ratecount),\(ratevalue),'\(src)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    func Add_business(id: Int,market: String, code: String, phone: String,mobile : String,fax: String,email: String,businessowner : String,address: String,description : String,startdate : String,expirationdate:  String,inactive : String ,subset: String, subsetid: Int,latitude: Double,longitude: Double, areaid: Int,area : String,user: String,cityid: Int,userid: Int,field1: Int,field2: Int,field3: Int,field4: Int,field5: Int,field6: Int,field7: Int,ratecount: Int, ratevalue: Double,src: String) {
        
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Business VALUES (\(id), '\(code)','\(market)','\(phone)','\(mobile)','\(fax)','\(email)','\(businessowner)','\(address)','\(description)','\(startdate)','\(expirationdate)','\(inactive)','\(subset)',\(subsetid),\(latitude),\(longitude),\(areaid),'\(area)','\(user)',\(cityid),\(userid),\(field1),\(field2),\(field3),\(field4),\(field5),\(field6),\(field7),\(ratecount),\(ratevalue),'\(src)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }

    }
    
    
    func Add_BusinessImage(id: Int,businessid: Int,src: String) {
        
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  BusinessImage VALUES (\(id),\(businessid), '\(src)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    
    func Add_city(id:Int,name: String,provinceid: Int) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  City VALUES (\(id),\(name)', \(provinceid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
   
    }
    
    func Add_bookmark(businessid: Int,memberid: Int){
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Bookmark VALUES (\(businessid), \(memberid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
   
    }
    
     func Add_area(id: Int ,areaname: String,cityid: Int) {
    
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Area VALUES (\(id),'\(areaname)', \(cityid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
        
    }
    
    
     func Add_Update(date: String) {
    
    
    }
    
    
    func Add_Like(id: Int,like: Boolean,memberid: Int,opinionid: Int) {
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Like VALUES (\(id),\(like), \(memberid),\(opinionid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    
    }
    
    
     func Add_Interest(subsetid: Int,memberid: Int) {
        
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Interest VALUES (\(subsetid),\(memberid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
     func Add_FieldActivity(id: Int,activity: String) {
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  FieldActivity VALUES (\(id),'\(activity)')"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    
    func Add_ShowNotification(id: Int,businessid: Int,show: Boolean) {
        
        
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  ShowNotification VALUES (\(id),\(businessid), \(show),)"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
    }
    
    func Add_Advertisment(id : Int,image : String,link : String,type : Int) {
    
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  Advertisment VALUES (\(id),'\(image)', '\(link)',\(type))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
        
    }
    
    
     func Add_SubsetProperty(id: Int,productsubsetid: Int,propertyid: Int) {
    
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "INSERT INTO  SubsetProperty_Product VALUES (\(id),\(productsubsetid), \(propertyid))"
            
            let result = db.executeUpdate(insertSQL,
                withArgumentsInArray: nil)
            
            if !result {
                println("Error: \(db.lastErrorMessage())")
            } else {
                
                
            }
        } else {
            println("Error: \(db.lastErrorMessage())")
        }
        
    }

    
    func selectNameTable(){
        
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        
        if contactDB.open() {
            let querySQL = "SELECT * From Sqlite_master"
            
            let results:FMResultSet? = contactDB.executeQuery(querySQL,
                withArgumentsInArray: nil)
            
            if results?.next() == true {
                do{
                println(results?.stringForColumn("name"))
                }while(results?.next() == true)
            } else {
                println(contactDB.lastErrorMessage())
            }
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
    }
}

