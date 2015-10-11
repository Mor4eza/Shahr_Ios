//
//  FieldDataBusiness.swift
//  ShahrMa
//
//  Created by parsa on 10/6/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation


//
class FieldDataBusiness {
    
    
    //
     static var name: Array<String> = []
     static var Id: Array<Int> = []
     static var DisCountId : Array<Int> = []
     static var DisCountPercent : Array<String> = []
     static var RateCount : Array<Int> = []
     static var Longtiude : Array<Double> = []
     static var Latitude : Array<Double> = []
     static var Rate : Array<Double> = []
     static var Src: Array<String> = []
     static var Phone : Array<String> = []
     static var Mobile : Array<String> = []
     static var SubsetId : Array<Int> = []
     static var Address : Array<String> = []
     static var MarketName : Array<String> = []
    
    
    static func SetRateCount(rateCount: Array<Int>) {
        self.RateCount=rateCount;
    
    }
    
    static func GetRateCount()-> Array<Int> {
        return RateCount;
    }
    
    
    static func SetDisCountPercent(percent: Array<String>)
    {
        DisCountPercent=percent;
    }
    
    static func GetDisCountPercent()-> Array<String>{
        return self.DisCountPercent;
    }
    
    static func SetIdBusiness(id: Array<Int>){
        self.Id=id;
    }
    
    static func GetIdBusiness()-> Array<Int> {
        return self.Id
    }
    
    static func SetSubsetId(subsetId: Array<Int>){
        self.SubsetId=subsetId;
    }
    
    static func GetSubsetId()-> Array<Int>{
        return self.SubsetId;
    }
    
    
    static func SetDisCountId(disCountId: Array<Int>){
        self.DisCountId=disCountId;
    }
    
    static func GetDisCountId()-> Array<Int>{
        return self.DisCountId;
    }
    
    /**
    * Get rate Business
    * @param rate
    */
    static func SetRateBusiness(rate: Array<Double>){
        self.Rate=rate;
    }
    
    static func  GetRateBusiness()-> Array<Double>{
        return self.Rate;
    }
    
    /**
    *
    * @param longtiude
    */
    static func SetLongtiudeBusiness(longtiude: Array<Double>){
        self.Longtiude=longtiude;
    }
    
    static func  GetLongtiudeBusiness()-> Array<Double>{
        return self.Longtiude;
    }
    
    /**
    *
    * @param latitude
    */
    static func SetLatitudeBusiness(latitude: Array<Double>){
        self.Latitude=latitude;
    }
    
    static func  GetLatitudeBusiness()-> Array<Double>{
        return self.Latitude;
    }
    
    
    /**
    * Get phone business
    * @param phone
    */
    static func SetPhoneBusiness(phone: Array<String>){
        self.Phone=phone;
    }
    
    static func GetPhoneBusiness()-> Array<String>{
        return self.Phone;
    }
    
    /**
    *
    * @param mobile
    */
    static func SetMobileBusiness(mobile: Array<String>){
        self.Mobile=mobile;
    }
    
    static func GetMobileBusiness()-> Array<String> {
        return self.Mobile;
    }
    
    /**
    * Get address business
    * @param address
    */
    static func SetAddressBusiness(address: Array<String>){
        self.Address=address;
    }
    
    static func GetAddressBusiness()-> Array<String> {
        return self.Address;
    }
    
    /**
    * Get market name business
    * @param marketName
    */
    static func SetMarketBusiness(marketName: Array<String>){
        self.MarketName=marketName;
    }
    
    static func GetMarketBusiness()-> Array<String> {
        return self.MarketName;
    }
    
    
    static func SetSrc(src: Array<String>){
        self.Src=src;
    }
    
    static func GetSrc() -> Array<String> {
        return self.Src
    }
    
    
     static func ClearAll(){
        
        self.Id.removeLast()
        self.Longtiude.removeLast()
        self.Latitude.removeLast()
        self.Rate.removeLast()
        self.Phone.removeLast()
        self.Mobile.removeLast()
        self.Address.removeLast()
        self.MarketName.removeLast()
        self.DisCountId.removeLast()
        self.Src.removeLast()
        self.SubsetId.removeLast()
    }
    
    
}