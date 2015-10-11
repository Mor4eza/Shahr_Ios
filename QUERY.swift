//
//  QUERY.swift
//  ShahrMa
//
//  Created by parsa on 10/5/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

class QUERY : SelectDataBase {
    
    
    func getsubsetName(id: Int)-> String {
    
        var Result : String="";
        let cursor:FMResultSet? = select_SubsetName(id);
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return Result;
    }
    
        
    func getAreaID(Name: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_AreaId(Name);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
    
        
    func getCollectionId(subsetid: Int)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CollectionId(subsetid);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
        
    func getCollectionIdProduct(namecollection: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_Collection_Product(namecollection);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
    
    func getValueId(nameValue: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_Value_Product(nameValue);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
    
    func getPropertyName(propertyid: Int)-> String {
        var Result: String = ""
        let cursor:FMResultSet? = select_Property_Product(propertyid);
        
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return  Result;
    }
    
        
        
    func getPropertyType(propertyid: Int)-> Int32 {
        var Result : Int32 = 0;
        let cursor:FMResultSet? = select_Property_Product(propertyid);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
    
    func getValueName(valueid: Int)-> String {
    var Result : String = ""
        let cursor:FMResultSet? = select_ValueName_Product(valueid)
        
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return  Result;
    }
    /**
    *
    * @param id
    * @return
    */
    func getCityName(id: Int)-> String {
    
    var Result : String = ""
        
        let cursor:FMResultSet? = select_CityName(id);
        
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return Result;
    }
    
        
        
    func getFieldActivityName(id: Int)-> String {
    
    var Result : String = ""
        
        let cursor:FMResultSet? = select_FieldActivityName(id);
        
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return Result;
    }
    
    func getFieldActivityId(nameactivity: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_FieldActivityId(nameactivity);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    
    
    func getDisCountId(businessid: Int)-> Int32 {
        var Result : Int32 = 0;
        let cursor:FMResultSet? = select_DisCountId(businessid);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return  Result;
    }
    /**
    *
    * @param subsetname
    * @return
    */
    func getsubsetID(subsetname: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_SubsetId(subsetname);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    func getAdvancesubsetID(subsetname: String)->Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_AdvanceSubsetId(subsetname);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    
    func getsubsetProductID(subsetname: String)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_SubsetProductId(subsetname);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    
    func getCityId(cityName: String)->Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CityId(cityName);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
        func getCountSubset()-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CountSubset();
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
        
        
    
    func getCountCollection()-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CountCollection();
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    func getCountBusiness(subsetid: Int)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CountBusiness_SubsetId(subsetid);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    func getNameBusiness(businessid: Int)->String {
    var Result : String = "";
        let cursor:FMResultSet? = select_business_NameMarket(businessid);
        
        if cursor?.next() == true {
            Result=cursor!.stringForColumnIndex(0) }
            
    return Result;
    }
    
    
    
    func getMemberId()-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_Member();
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
    return Result;
    }
    
    /**
    * Geting Businessid in Table ShowNotification
    * @return
    */
    func getShowNotification(id: Int)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_ShowNotificationBusinessId(id);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
            return Result;
    }
    
    
    func getBookMarkId(businessid: Int)-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_bookmarkId(businessid);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
            return Result;
    }
    
    
    func getOpinionId()-> Int32 {
    var Result : Int32 = 0;
    
            let cursor:FMResultSet? = select_opinion();
            
            if cursor?.next() == true {
                    Result=cursor!.intForColumnIndex(0) }
            
        return Result;
    }
    
        
        
    func getBusinessId()-> Int32 {
        var Result : Int32 = 0;
        
        let cursor:FMResultSet? = select_CountBusiness_SubsetId(14);
        
        if cursor?.next() == true {
            Result=cursor!.intForColumnIndex(0) }
            
            return Result;
    }

}


