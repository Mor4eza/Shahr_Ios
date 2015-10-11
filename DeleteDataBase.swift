//
//  DeleteDataBase.swift
//  ShahrMa
//
//  Created by parsa on 10/6/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class DeleteDataBase : DataBase {
    

    // Deleting Opinion
    func delete_Opinion() {
        let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM  \(Instruction.TABLE_NAME_Opinion)";
            
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
    
    /**
    * delete all record table member
    */
    func delete_Member(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Member)"
            
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
    
    
    func delete_Interest(subsetid: Int,memberid: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Interest) WHERE SubsetId=\(subsetid) AND MemberId=\(memberid)";
            
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
    
    
    func delete_Interest(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Interest)";
            
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
    
    /**
    *
    */
    func delete_Area(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Area)";
            
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
    
    /**
    *
    */
    func delete_City()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_City)";
            
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
    
    /**
    *
    */
    func delete_FiledActivity(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_FieldActivity)"
            
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
    
    func delete_DisCountMember(id: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_DisCount_Member) WHERE Id=\(id)";
            
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
    
    func delete_DisCountMember(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_DisCount_Member)";
            
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
    
    
    func delete_LikeDisCount(memberid: Int,discountid: Int,businessid: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Like_DisCount) WHERE MemberId=\(memberid) AND DisCountId=\(discountid) AND BusinessId=\(businessid)";
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
    /**
    *
    */
    func delete_Subset(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Subset)";
            
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
    
    
    func delete_Subset_Product()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Subset_Product)";
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
    
    
    func delete_BusinessImage(){
        
    let db = FMDatabase(path: databasePath as String)
        
        if db.open() {
            let insertSQL = "DELETE  FROM  \(Instruction.TABLE_NAME_Business_Image)"
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
    
    
    func delete_BusinessImage(Id: Int)
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Business_Image) WHERE Id=\(Id)"
            
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
    
    
    func delete_BusinessImage(src: String,businessid: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM  \(Instruction.TABLE_NAME_Business_Image) WHERE BusinessId=\(businessid) AND  Src='\(src)'"
            
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
    
    func delete_Advertisment(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Advertisment)";
            
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
    /**
    *
    */
    func delete_Collection(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Collection)";
            
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
    
    func delete_Collection_Product()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Collection_Product)";
            
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
    
    /**
    * delete all record table notification
    */
    
    func delete_Notification(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Notification)";
            
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
    
    func delete_Notification(id: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Notification) WHERE Id=\(id)";
            
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
    
    func delete_BusinessId(id: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Business) WHERE Id=\(id)";
            
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
    
    func delete_Business(cityid: Int,subsetid: Int)
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Business) WHERE CityId=\(cityid) AND SubsetId=\(subsetid)";
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
    
    
    
    
    func delete_BusinessTops(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Business_Tops )";
            
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
    
    
    func delete_BusinessDisCount(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_Business_DisCount)";
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
    
    func delete_DisCount(id: Int){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE  FROM \(Instruction.TABLE_NAME_DisCount) WHERE Id=\(id)";
            
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
    

    
    func delete_Business(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM  \(Instruction.TABLE_NAME_Business)";
            
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
    
    func delete_Search()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM  \(Instruction.TABLE_NAME_Search)";
            
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
    
    func delete_bookmark(){
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM \(Instruction.TABLE_NAME_BookMark)"
            
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
    
    func delete_Value_Product()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM  \(Instruction.TABLE_NAME_Value_Product)"
            
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
    
    func delete_SubsetProperty_Product()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM  \(Instruction.TABLE_NAME_SubsetProperty_Product)"
            
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
    
    
    
    func delete_Property_Product()
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM \(Instruction.TABLE_NAME_Property_Product)";
            
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
    
    
    func delete_bookmark(businessid: Int)
    {
    let db = FMDatabase(path: databasePath as String)
        if db.open() {
            
            let insertSQL = "DELETE FROM \(Instruction.TABLE_NAME_BookMark) WHERE BusinessId=\(businessid)";
            
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
    
}
