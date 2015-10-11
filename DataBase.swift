//
//  DataBase.swift
//  ShahrMa
//
//  Created by parsa on 10/5/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation
class DataBase  {
 
    
     var databasePath = NSString()
      
    // create or open the database
    func CreateOropen(){
        println("Start create database")
        let filemgr = NSFileManager.defaultManager()
        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory,.UserDomainMask,true)
        let docsDir = dirPaths[0] as! String
        databasePath = docsDir.stringByAppendingPathComponent("Shahrma.db")
        println(databasePath)
        
        if !filemgr.fileExistsAtPath(databasePath as String) {
            let ShahrmaDB = FMDatabase(path: databasePath as String)
            if ShahrmaDB == nil{
                println("Error CreateOropen database : \(ShahrmaDB.lastErrorMessage())")
            }
            
            println("open")
            if ShahrmaDB.open(){
                println(Instruction.CREATE_TABLE_Subset)
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Subset){
                    println("Error create table subset : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Subset_Product){
                    println("Error create table product_subset : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Collection_Product){
                    println("Error create table Collection_Product : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Property_Product){
                    println("Error create table Property_Product : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Value_Product){
                    println("Error create table vlaue_Product : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_SubsetProperty_Product){
                    println("Error create table SubsetProperty_Product : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Collection){
                    println("Error create table collection : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Member){
                    println("Error create table Member : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Opinion){
                    println("Error create table Opinion : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Business_Tops){
                    println("Error create table Business_Tops : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Business_DisCount){
                    println("Error create table Business_DisCount : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_BusinessImage){
                    println("Error create table BusinessImage : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Business){
                    println("Error create table Business : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_City){
                    println("Error create table City : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Bookmark){
                    println("Error create table BookMark : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Area){
                    println("Error create table Arae : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Update_Time){
                    println("Error create table UpdateTime : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Search){
                    println("Error create table Search : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Like){
                    println("Error create table Like : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Interest){
                    println("Error create table Interest : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Notification){
                    println("Error create table Notification : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_ShowNotification){
                    println("Error create table ShowNotification : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_FieldActivity){
                    println("Error create table FieldActivity : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_DisCount){
                    println("Error create table DisCount : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_DisCountMember){
                    println("Error create table DisCountMember : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_LikeDisCount){
                    println("Error create table LikeDisCount : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_Advertisment){
                    println("Error create table Advertisment : \(ShahrmaDB.lastErrorMessage())")}
                
                if !ShahrmaDB.executeStatements(Instruction.CREATE_TABLE_ProductMember){
                    println("Error create table ProductMember : \(ShahrmaDB.lastErrorMessage())")}
                
                
                // closse database
                ShahrmaDB.close()
                
            }
            else
            {
                
                println("error1")
                println("Error CreateOropen database : \(ShahrmaDB.lastErrorMessage())")
            }
        }
        else
        {
            println("error0")
        }
        
    }
    
    
    
}
