//
//  SelectDataBase.swift
//  ShahrMa
//
//  Created by parsa on 10/4/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class SelectDataBase : DataBase {
    
    var result = FMResultSet()
    
    
    
    func select_AllBusiness()-> FMResultSet{
        
        
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM \(Instruction.TABLE_NAME_Business)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
    return result
    
    }
    
    
    func select_BusinessSearchNearMe(latitude: Double,logntitude: Double,near: Double,Subsetid: Int)-> FMResultSet{

    var  query = "select * from  \(Instruction.TABLE_NAME_Business) where (Latitude) \(near)>= \(latitude) AND Latitude- \(near)<= \(latitude))AND(Longitude+ \(near)>= \(logntitude) AND Longitude- \(near) <= \(logntitude) ) AND SubsetId=\(Subsetid)";
    
    
        
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
    return result
    
    }
    
    func select_BusinessSearchNearMe(latitude: Double,logntitude: Double,near: Double)-> FMResultSet{
    
    var query = "select * from \(Instruction.TABLE_NAME_Business) where Latitude \(near)>= \(latitude) AND Latitude-\(near)<= \(latitude))AND(Longitude+\(near)>= \(logntitude) AND Longitude-\(near)<= \(logntitude))";
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    
    }
    
    
    func select_BusinessSearch(namemarket: String,cityid: Int,fieldactivty: Int)-> FMResultSet{
    
    var query = "select * from \(Instruction.TABLE_NAME_Business) where( Field1= \(fieldactivty) or Field2= \(fieldactivty) or Field3= \(fieldactivty) or Market like'% \( namemarket )%' or Address like '% \(namemarket)) AND (CityId= \(cityid))";

        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_BusinessSearch(namemarket: String,cityid: Int,fieldactivity: Int,fieldactivity2: Int)-> FMResultSet{


    var query = "select * from  \( Instruction.TABLE_NAME_Business) where( Field1= \(fieldactivity) or Field1= \(fieldactivity2) or Field2= \(fieldactivity) or Field2= \(fieldactivity2) or Field3= \(fieldactivity) or Field3= \(fieldactivity2) or Market like'% \(namemarket)%' or Address like '% \(namemarket)%') AND (CityId= \(cityid))";
    
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    
    func select_BusinessSearch(namemarket: String,cityid: Int,fieldactivity: Int,fieldactivity2: Int,fieldactivity3: Int)-> FMResultSet{
    
    var query = "select * from  \( Instruction.TABLE_NAME_Business) where( Field1= \(fieldactivity) or Field1= \(fieldactivity2) or Field1= \(fieldactivity3) or Field2= \(fieldactivity) or Field2= \(fieldactivity2) or Field2= \(fieldactivity3) or Field3= \(fieldactivity) or Field3= \(fieldactivity2) or Field3= \(fieldactivity3) or Market like'% \(namemarket)%' or Address like '% \(namemarket)%') AND (CityId= \(cityid))";
    
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_BusinessAdvanceSearch(namemarket: String,address: String,cityid: Int,subsetId: Int)-> FMResultSet{
    
    var query = "select * from  \( Instruction.TABLE_NAME_Business) where(SubsetId= \(subsetId)) and (Market like'% \( namemarket )%') and ( Address like '% \( address )%') AND (CityId= \(cityid))";
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_BusinessFieldAdvanceSearch(namemarket: String ,address: String ,cityid: Int,Field: Int)-> FMResultSet{
    
    var query = "select * from  \( Instruction.TABLE_NAME_Business) where(Field1= \(Field ) OR Field2= \(Field) OR Field3= \(Field) OR Field4= \(Field) OR Field5= \(Field) OR Field6= \(Field) OR Field7= \(Field)) And ( Market like'% \( namemarket )%' AND Address like '% \( address )%') AND (Field1= \(Field) OR Field2= \(Field) OR Field3= \(Field) OR Field4= \(Field) OR Field5= \(Field)OR Field6= \(Field) OR Field7= \(Field)) AND (CityId= \(cityid))";
        
        
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    
    func select_BusinessSearchBazarYab(SubsetId: Int,txtMarket: String ,address: String,arreaId: Int)-> FMResultSet{
    
    var query = "select * from  \( Instruction.TABLE_NAME_Business) where(Market like'% \(txtMarket )%' AND Address like '% \(address )%') AND (AreaId= \(arreaId)) AND (SubsetId= \(SubsetId))";
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    func select_BusinessSearch(namemarket1: String,namemarket2: String,namemarket3: String,namemarket4: String,namemarket5: String,cityid: Int){
    
        var query: String
//    
//    if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0 && namemarket4.length()>0 && namemarket5.length()>0
//    {
//     query = "select * from  \( Instruction.TABLE_NAME_busin) where( Market like'% \( namemarket1)%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 )%' or Market like '% \( namemarket4 )%' or Market like '% \( namemarket5 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2)%' or Address like '% \( namemarket3 )%' or Address like '% \( namemarket4 )%' or Address like '% \(namemarket5 )%') AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0 && namemarket4.length()>0
//    {
//    
//     query = "select * from  \(Instruction.TABLE_NAME_Business) where( Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 )%' or Market like '% \( namemarket4 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%' or Address like '% \( namemarket3 )%' or Address like '% \( namemarket4 )%') AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0
//    {
//
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%' or Address like '% \( namemarket3 )%' ) AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0
//    {
//    
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%') AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0
//    {
//
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Market like'% \( namemarket1 )%') or (Address like '% \( namemarket1 )%') AND (CityId= \(cityid))";
//    }
//    
//        CreateOropen()
//        let contactDB = FMDatabase(path: databasePath as String)
//        if contactDB.open() {
//            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
//            contactDB.close()
//        } else {
//            println("Error: \(contactDB.lastErrorMessage())")
//        }
//        
//        return result
//    
    }
    
    
    
    
    func select_BusinessSearch(namemarket1: String ,namemarket2: String ,namemarket3: String ,namemarket4: String ,namemarket5: String ,SubsetId: Int,cityid: Int,fieldactivity: Int){
        var query: String
//    
//    if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0 && namemarket4.length()>0 && namemarket5.length()>0{
//
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Field1= \(fieldactivity) or Field2= \(fieldactivity) or Field3= \(fieldactivity) or Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 )%' or Market like '% \( namemarket4 )%' or Market like '% \( namemarket5 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%' or Address like '% \( namemarket3 )%' or Address like '% \( namemarket4 )%' or Address like '% \( namemarket5 )%') AND (SubsetId= \(SubsetId) or Field1= \(fieldactivity)) AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0 && namemarket4.length()>0 && fieldactivity>0 {
//    
//   //  query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Field1= \(fieldactivity) or Field2= \(fieldactivity) or Field3= \(fieldactivity) or Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 %' or Market like '%  \(namemarket4 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%' or Address like '% \( namemarket3 )%' or Address like '% \( namemarket4 )%') AND (SubsetId= \(SubsetId) or Field1= \(fieldactivity)) AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0 && namemarket3.length()>0  && fieldactivity>0
//    {
//    
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Field1= \(fieldactivity) or Field2= \(fieldactivity) or Field3= \(fieldactivity) or Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%' or Market like '% \( namemarket3 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%' or Address like '% \( namemarket3 )%') AND (SubsetId= \(SubsetId) or Field1= \(fieldactivity)) AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && namemarket2.length()>0 && fieldactivity>0
//    {
//    
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Field1= \(fieldactivity) or Field2= \(fieldactivity) or Field3= \(fieldactivity) or Market like'% \( namemarket1 )%' or Market like '% \( namemarket2 )%') or (Address like '% \( namemarket1 )%' or Address like '% \( namemarket2 )%') AND (SubsetId= \(SubsetId) or Field1= \(fieldactivity) ) AND (CityId= \(cityid))";
//    }
//    else if namemarket1.length()>0 && fieldactivity>0
//    {
//    
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Field1= \(fieldactivity) or Market like'% \( namemarket1 )%')  or (Address like '% \( namemarket1 )%') AND (SubsetId= \(SubsetId) or Field1=(fieldactivity)) AND (CityId= \(cityid))";
//    }
//    else if fieldactivity<=0
//    {
//    
//     query = "select * from  \( Instruction.TABLE_NAME_BUSINESS ) where( Market like'% \( namemarket1 )%') or (Address like '% \( namemarket1 )%')AND (SubsetId= \(SubsetId) or Field1= \(fieldactivity)) AND (CityId= \(cityid))";
//    }
//    
//    
//        CreateOropen()
//        let contactDB = FMDatabase(path: databasePath as String)
//        if contactDB.open() {
//            result = contactDB.executeQuery(query,withArgumentsInArray: nil)
//            contactDB.close()
//        } else {
//            println("Error: \(contactDB.lastErrorMessage())")
//        }
//        
//        return result
//    
    }
    
    func select_BusinessSearchAddreass(address: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business) WHERE Address like '% \(address)%'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllBusinessTops()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \(Instruction.TABLE_NAME_Business_Tops) ",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllBusinessTops(businessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business_Tops) WHERE Id= \(businessid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllBusinessDisCount()-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business_DisCount)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_AllBusinessDisCount(businessid: Int)-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business_DisCount) WHERE Id= \(businessid) ",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    func select_CountBusiness_SubsetId(subsetID: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Business)  WHERE SubsetId= \(subsetID)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_CountBusinessId(id: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Business)  WHERE Id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllBusiness(subsetID: Int,cityid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Business)  WHERE SubsetId= \(subsetID) AND CityId=\(cityid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_AllBusiness(subsetID: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business)  WHERE SubsetId= \(subsetID)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_SortRateBusiness(subsetID: Int,cityid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business)  WHERE SubsetId= \(subsetID) AND CityId= \(cityid) ORDER BY (RateValue * RateCount) DESC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_SortNameBusiness(subsetID: Int,cityid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business )  WHERE SubsetId= \(subsetID) AND CityId= \(cityid) ORDER BY  \( Instruction.MARKET_business ) ASC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_SortDateBusiness(subsetID: Int,cityid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business)  WHERE SubsetId= \(subsetID) AND CityId= \(cityid) ORDER BY  \( Instruction.ID_business ) DESC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllBusinessId(id: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id,Market,Phone,Mobile,Fax,Email,BusinessOwner,Address,Description,SubsetId,Latitude,Longitude,Field1,Field2,Field3,Field4,Field5,Field6,Field7,RateValue,AreaId,Src,CityId  FROM  \( Instruction.TABLE_NAME_Business)  WHERE Id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_BusinessAndBusinessImage(id: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("select p.Id,p.Market,p.Address,P.RateValue,H.Src from   \( Instruction.TABLE_NAME_Business)  P inner join  \(Instruction.TABLE_NAME_Business_Image) H on (H.BusinessId = \(id) and  P.Id= \(id) ) \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_business_NameMarket(businessID: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Market FROM  \( Instruction.TABLE_NAME_Business)  WHERE Id= \(businessID)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    //end business
    
    
    
    func select_FieldActivity()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_FieldActivity)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    
    func select_ShowNotificationBusinessId(id: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Show_Notification) WHERE Id= \(id )",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    func select_AllDisCount()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_DisCount)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_DisCountId(businessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_DisCount ) WHERE BusinessId= \(businessid )",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_DisCount(businessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_DisCount) WHERE BusinessId= \(businessid )",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllDisCountMember()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \(Instruction.TABLE_NAME_DisCount_Member)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_DisCountMember(businessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_DisCount_Member) WHERE BusinessId= \(businessid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_AllDisCountMember(id: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_DisCount_Member) WHERE Id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_FieldActivityId(fieldname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_FieldActivity ) WHERE Activity=' \(fieldname)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    func select_SearchFieldActivityId(fieldname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_FieldActivity ) WHERE Activity like'% \(fieldname)%'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    func select_FieldActivityName(id: Int) -> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Activity FROM  \( Instruction.TABLE_NAME_FieldActivity ) WHERE Id= \(id )",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func SearchBusiness(nameMarket: String,subsetId: Int,cityid: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business)  (WHERE SubsetId= \(subsetId) AND Market LIKE '% \(nameMarket)%') AND (CityId= \(cityid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    //End Select Business
    
    
    
    func select_TableSearch(market: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Search )  WHERE Market Like '% \(market)%'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_TableSearch()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Search)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_TableSearchSortRate()-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \(Instruction.TABLE_NAME_Search) ORDER BY (RateValue * RateCount)  DESC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_TableSearchSortName()-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Search) ORDER BY Market ASC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_TableSearchSortId()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Search) ORDER BY Id  ASC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    
    func select_SubsetId(subsetname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Subset)  WHERE SubsetName= ' \( subsetname)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AdvanceSubsetId(subsetname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Subset)  WHERE SubsetName=' \( subsetname)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_SubsetProductId(subsetname: String)-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Subset_Product)  WHERE SubsetName=' \( subsetname)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_SubsetId(CollectionId: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Subset)  WHERE CollectionId= \(CollectionId)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_SubsetName(id: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT SubsetName FROM  \( Instruction.TABLE_NAME_Subset)  WHERE Id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_CollectionId(subsetid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT CollectionId FROM  \( Instruction.TABLE_NAME_Subset)  WHERE Id= \(subsetid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    func select_CityName(id: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Name FROM  \( Instruction.TABLE_NAME_City )  WHERE id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_business_Detail(market: String,address: String)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business )  WHERE Market=' \( market)' AND Address=' \(address)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_Interest()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Interest)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    func select_opinion()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Opinion)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_bookmark()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_BookMark)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_bookmarkId(businessid: Int)-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM \(Instruction.TABLE_NAME_BookMark)  WHERE BusinessId= \(businessid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_opinion_BusinessId(busintessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Opinion )  WHERE Erja= \(busintessid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    func select_Member()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Member)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Update()-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_UpdateTime)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    func select_Member_Name()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Name FROM  \( Instruction.TABLE_NAME_Member)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    
    func select_Collection()-> FMResultSet
    {
        CreateOropen()
        var id : Array<Int32> = []
        var name : Array<String> = []
          var fdb = FieldDataBusiness()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
             result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Collection) ORDER BY CollectionName ASC",withArgumentsInArray: nil)
            
            if result.next() == true {
                do{
                    println("name : \(result.stringForColumnIndex(1))")
                    id.append(result.intForColumnIndex(0))
                    name.append(result.stringForColumnIndex(1))
                }while(result.next() == true)
            }
            FieldDataBusiness.setCollectionId(id)
            FieldDataBusiness.setCollectionName(name)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        println("count id : \(FieldDataBusiness.getCollectionId().count)")
        return result
    }
    
    func select_Collection_Product()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Collection_Product)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Collection_Product(namecollection: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Collection_Product) WHERE CollectionName=' \(namecollection)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    
    func select_Collection(collectionname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \(Instruction.TABLE_NAME_Collection) WHERE CollectionName like '% \(collectionname)%'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    
    func select_Subset(CollectionId: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Subset) WHERE CollectionId= \(CollectionId)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Subset()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Subset)  ORDER BY SubsetName ASC",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Subset_Product()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Subset_Product)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Subset_Product(collectionid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Subset_Product) WHERE CollectionId= \(collectionid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_SearchSubset(subsetName: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Subset) WHERE SubsetName LIKE '% \(subsetName)%'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllNotificaton()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Notification)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    
    }
    
    
    
    
    func select_NotificatonId(Id: Int)-> FMResultSet
    {
    
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Notification) WHERE Id=\(Id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_CountCollection()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Collection)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_AllArea()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Area)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    
    }
    
    func select_Area(cityid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Area) WHERE CityId= \(cityid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        
        return result
    }
    
    
    func select_BusinessImage(businessid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Business_Image) WHERE BusinessId= \(businessid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
     return result
    }
    
    
    func select_Advertisment()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Advertisment) ",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_AreaId(name: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Area ) WHERE AreaName=' \(name)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_AreaName(id: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT AreaName FROM  \( Instruction.TABLE_NAME_Area ) WHERE id= \(id)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_CountSubset()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT COUNT(*) FROM  \( Instruction.TABLE_NAME_Subset)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    
    }
    
    func select_AllCity()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_City ) ORDER BY Name",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_CityId(cityname: String)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_City) WHERE Name=' \(cityname)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_SubsetProperty_Product()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_SubsetProperty_Product)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    
    func select_SubsetProperty_Product(subsetpropertyid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT PropertyId FROM  \( Instruction.TABLE_NAME_SubsetProperty_Product) WHERE ProductSubsetId= \(subsetpropertyid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_Property_Product(propertyid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Name,Type FROM  \( Instruction.TABLE_NAME_Property_Product) WHERE Id= \(propertyid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_Property_Product()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Property_Product)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_Value_Product()-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Value_Product)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_Value_Product(propertyid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT * FROM  \( Instruction.TABLE_NAME_Value_Product) WHERE IdProperty= \(propertyid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_ValueName_Product(valueid: Int)-> FMResultSet
    {
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Name FROM  \( Instruction.TABLE_NAME_Value_Product) WHERE Id= \(valueid)",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }
    
    func select_Value_Product(namevalue: String)-> FMResultSet{
        CreateOropen()
        let contactDB = FMDatabase(path: databasePath as String)
        if contactDB.open() {
            result = contactDB.executeQuery("SELECT Id FROM  \( Instruction.TABLE_NAME_Value_Product) WHERE Name=' \(namevalue)'",withArgumentsInArray: nil)
            contactDB.close()
        } else {
            println("Error: \(contactDB.lastErrorMessage())")
        }
        return result
    }

}
