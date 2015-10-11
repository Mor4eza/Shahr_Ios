////
////  FieldClass.swift
////  ShahrMa
////
////  Created by parsa on 10/5/15.
////  Copyright (c) 2015 Ariana. All rights reserved.
//
//import Foundation
//
//class FieldClass  {
//    
//    
//    // variable get json
//      static var data_json : String = ""
//    
//    // Field  member table
//     static var  Name : String = ""
//     static var Email : String = ""
//     static var Mobile : String = ""
//     static var Age : Int = 0
//     static var Sex : Bool = false
//     static var UserName : String = ""
//     static var Password : String = ""
//     static var CityId : Int = 0
//    
//    // Field  DisCount table
//     static var  Id_DisCount : Int = 0
//     static var  Text_DisCount : String = ""
//     static var  Image_DisCount : String = ""
//     static var  Startdate_DisCount : String = ""
//     static var  Expirationdate_DisCount : String = ""
//     static var  Description_DisCount : String = ""
//     static var  Percent_DisCount : String = ""
//     static var  BusinessId_DisCount : Int = 0
//    
//    
//    //Field BookMark table
//     static var  Id_Bookmark: Int = 0
//     static var  Businessid_Bookmark: Int = 0
//     static var  Memberid_Bookmark: Int =  0
//    
//    // Field  Opinion table
//     static var  Description: String? = ""
//     static var  Date: String? = ""
//     static var  MemberName: String? = ""
//     static var  Erja: Int = 0
//     static var  CountLike: Int = 0
//     static var  CountDisLike: Int = 0
//    
//     static var  selected_job: String = ""
//     static var  Count_Business: Int = 0
//     static var  Business_SubsetId: Int = 0
//     static var  SubsetId: Int = 0
//     static var  Business_Id: Int = 0
//     static var  Market_Business: String = ""
//     static var  Address_Business: String = ""
//    
//    
//    static var Latitude_Business : Double = 0.0
//    static var Longtiude_Business: Double = 0.0
//    
//    
//     static var  Count_Like: Int = 0
//     static var  Count_DisLike: Int = 0
//    
//     static var  Number: Int = 0
//     static var  Type: Int = 0
//    
//    
//     static var  ProductId: Int = 0
//     static var ProductReciver: Bool = false;
//    
//     static var ShowNotification: Bool = false;
//     static var SearchOffline: Bool = false;
//     static var SearchOnlinee: Bool = false;
//     static var FilterProduct: Bool = false;
//     static var  ShowNotificationId : Int = 0
//    
//     static var Latitude: Double=0.0;
//     static var curLongitude: Double=0.0;
//    
//     static var Notification_GoodMorning: Bool = false;
//    
//     static var BusinessTops: Bool = false
//     static var BusinessDiscountTops: Bool = false;
//     static var NameSubset : Array<String> = []
//    // get/set
//    
//    //***********************************************************************
//    // Set json Member
//    static func  SetMember_Json(json_member: String)
//    {
//        self.data_json=json_member;
//    }
//    
//    // Get  Member
//    static func GetMember_json()-> String
//    {
//        return self.data_json
//    }
//    //*********************************************************************
//    // Set  Member
//    static func  SetMember_Name(name: String)
//    {
//        self.Name=name;
//    }
//    // Set  Member
//    static func  SetMember_Email(email: String)
//    {
//        self.Email=email;
//    }
//    // Set  Member
//    static func  SetMember_Mobile(mobile: String)
//    {
//        self.Mobile=mobile;
//    }
//    // Set  Member
//    static func  SetMember_Age(age: Int)
//    {
//        self.Age=age;
//    }
//    // Set  Member
//    static func  SetMember_Sex(sex: Bool)
//    {
//        self.Sex=sex;
//    }
//    // Set  Member
//    static func  SetMember_UserName(username: String)
//    {
//        self.UserName=username;
//    }
//    // Set  Member
//    static func  SetMember_Password(password: String)
//    {
//        self.Password=password;
//    }
//    // Set  Member
//    static func  SetMember_CityId(cityid: Int)
//    {
//        self.CityId=cityid;
//    }
//    
//    
//    // Get  Member
//    static func  GetMember_Name()-> String
//    {
//        return  self.Name
//    }
//    // Get  Member
//    static func GetMember_Email()
//    {
//        return self.Email
//    }
//    // Get  Member
//    static func GetMember_Mobile()-> String?
//    {
//        return  self.Mobile;
//    }
//    // Get  Member
//    static func  GetMember_Age() -> String?
//    {
//        return  self.Age;
//    }
//    // Get  Member
//    static func  GetMember_Sex()-> Bool
//    {
//        return Sex;
//    }
//    // Get  Member
//    static func GetMember_UserName() -> String
//    {
//        return  self.UserName
//    }
//    // Get  Member
//    func String  GetMember_Password()
//    {
//    return  self.Password;
//    }
//    // Get  Member
//    static func GetMember_CityId()-> Int{
//        return  self.CityId;
//    }
//    
//    
//    // Get and Set field opinion
//    
//    // Set  opinion
//    static func  SetOpinion_Description(description: String)
//    {
//    Description=description;
//    }
//    // Set  opinion
//    static func  SetOpinion_Date(date: String)
//    {
//    Date=date;
//    }
//    // Set  opinion
//    static func  SetOpinion_MemberName(membername: String)
//    {
//    MemberName=membername;
//    }
//    // Set  opinion
//    static func  SetOpinion_Erja(erja: Int){
//        self.Erja=erja;
//    }
//    // Set  opinion
//    static func  SetOpinion_CountLike(countlike: Int){
//        self.CountLike=countlike;
//    }
//    // Set  opinion
//    static func  SetOpinion_CountDisLike(countdislike: Int){
//        self.CountDisLike=countdislike;
//    }
//    
//    
//    // Get  opinion
//    static func GetOpinion_Description()-> String {
//        return Description;
//    }
//    // Get  opinion
//    static func  GetOpinion_Date()-> String {
//        return  self.Date;
//    }
//    // Get  opinion
//    static func  GetOpinion_MemberName()-> String {
//        return  self.MemberName;
//    }
//    // Get  opinion
//    static func  GetOpinion_Erja()-> String {
//        return  self.Erja;
//    }
//    // Get  opinion
//    static func  GetOpinion_CountLike()-> Int
//    {
//        return  self.CountLike;
//    }
//    // Get  opinion
//    static func  GetOpinion_CountDisLike()-> Int {
//        return  self.CountDisLike;
//    }
//    
//    
//    // Set and Get Selected_job
//    static func  SetSelected_job(selected: String) {
//        self.selected_job=selected;
//    }
//    static func  GetSelected_job()-> String {
//        return  self.selected_job;
//    }
//    
//    
//    // Set and Get Selected_job
//    static func  SetBusiness_SubsetId(SubsetId: Int){
//        self.Business_SubsetId=SubsetId;
//    }
//    static func  GetBusiness_SubsetIdb()->Int {
//        return  self.Business_SubsetId;
//    }
//    
//    
//    // Set  BookMark
//    static func  SetMemberid_BookMark(memberid: Int){
//        self.Memberid_Bookmark=memberid;
//    }
//    static func  SetBusinessid_BookMark(businessid: Int){
//        self.Businessid_Bookmark=businessid;
//    }
//    
//    
//    //  Get BookMark
//    static func  GetMemberid_BookMark()-> Int{
//        return self.Memberid_Bookmark;
//    }
//    static func  GetBusinessid_BookMark()-> Int{
//        return  self.Businessid_Bookmark;
//    }
//    
//    
//    // Set and Get Description_business/Market_Business
//    
//    // Set  Market_Business
//    static func  SetMarket_Business(market: String){
//        self.Market_Business=market;
//    }
//    
//    // Set  Description_business
//    static func  SetAddress_Business(tozih: String){
//        self.Address_Business=tozih;
//    }
//    
//    
//    // Get  Market_Business
//    static func GetMarket_Business()-> String {
//        return self.Market_Business;
//    }
//    
//    // Get  Description_business
//    static func  GetAddress_Business()-> String {
//        return  self.Address_Business;
//    }
//    
//    
//    // Set and Get Business_Id
//    static func  SetBusiness_Id(id: Int){
//        self.Business_Id=id;
//    }
//    
//    static func  GetBusiness_Id()-> Int{
//        return  self.Business_Id;
//    }
//    
//    
//    
//    // Get database
//    
//    // Get  subset
//    static func  GetTableNameSubset()-> String {
//        return  self.self.TABLE_NAME_SUBSET ;
//    }
//    // Get  collection
//    static func  GetTableNameCollection()-> String {
//        return  self.self.TABLE_NAME_COLLECTION;
//    }
//    // Get  member
//    static func  GetTableNameMember()-> String {
//        return  self.Tself.ABLE_NAME_MEMBER;
//    }
//    // Get  opinion
//    static func  GetTableNameOpinion()-> String {
//        return  self.self.TABLE_NAME_OPINION;
//    }
//    // Get  business
//    static func GeTableNameBusiness()-> String {
//        return self.TABLE_NAME_BUSINESS;
//    }
//    // Get  city
//    static func GetTableNamecity()-> String {
//        return  self.TABLE_NAME_City;
//    }
//    // Get  bookmark
//    static func GetTableNameBookmark()-> String{
//        return  self.TABLE_NAME_Bookmark;
//    }
//    // Get  area
//    static func GetTableNameArea()-> String{
//        return  self.TABLE_NAME_Area;
//    }
//    // Get  Interest
//    static func GetTableNameInterest()-> String{
//        return  self.TABLE_NAME_Interest;
//    }
//    // Get  Like
//    static func GetMeTableNameLike()-> String{
//        return  self.TABLE_NAME_Like;
//    }
//    // Get  ZamanSanj
//    static func GetTableNameUpdateTime()-> String{
//        return  self.TABLE_NAME_UpdateTime;
//    }
//    // Get  Notification
//    static func GetTableNameNotification()-> String{
//        return  self.TABLE_NAME_NOTIFICATION;
//    }
//    
//    // Get  database
//    static func  GetDataBaseName()-> String{
//        return  self.DATABASE_NAME;
//    }
//    
//    
//    // get and set latitude/longtiude
//    
//    static func  GetLatitude_Business()-> Double {
//        return self.Latitude_Business;
//    }
//    
//    static func  GetLongtiude_Business()-> Double {
//        return  self.Longtiude_Business;
//    }
//    
//    static func  SetLatitude_Business(latitude: Double){
//        self.Latitude_Business=latitude;
//    }
//    
//    
//    static func  SetLongtiude_Business(longtiude: Double){
//        self.Longtiude_Business=longtiude;
//    }
//    
//    static func  SetCount_Business(count: Int){
//       self.Count_Business=count;
//    }
//    
//    
//    static func GetCount_Business()-> Int{
//      return self.Count_Business;
//    }
//    
//    static func  SetSubsetId(Idsubset: Int){
//        self.SubsetId=Idsubset;
//    }
//    
//    static func  GetSubsetId()-> Int{
//        return self.SubsetId;
//    }
//    
//    /**
//    * Get and Set Count Like/DisLike
//    */
//    static func  SetCount_like(like: Int){
//        self.Count_Like=like;
//    }
//    static func  SetCount_Dislike(dislike: Int){
//        self.Count_DisLike=dislike;
//    }
//    
//    static func  GetCount_like()-> Int{
//        return  self.Count_Like;
//    }
//    
//    static func  GetCount_Dislike()-> Int{
//        return  self.Count_DisLike;
//    }
//    /**
//    * Get and Set Namesubset Array
//    * Type List<String>
//    */
//    static func  SetNameSubset(List<String> subsetname)
//    {
//        self.NameSubset=subsetname;
//    }
//    func List<String>  GetNameSubset()
//    {
//    return NameSubset;
//    }
//    
//    
//    /**
//    * Get and Set DisCount
//    * File DisCount
//    */
//    // Set  Member
//    static func  SetId_DisCount(id: Int){
//        self.Id_DisCount=id;
//    }
//    // Set  Member
//    static func  SetText_DisCount(text: String){
//        self.Text_DisCount=text;
//    }
//    // Set  Member
//    static func  SetImage_DisCount(image: String){
//        self.Image_DisCount=image;
//    }
//    // Set  Member
//    static func  SetStartDate_DisCount(startdate: String){
//        self.Startdate_DisCount=startdate;
//    }
//    // Set  Member
//    static func  SetExpirationDate_DisCount(expirationdate: String){
//        self.Expirationdate_DisCount=expirationdate;
//    }
//    // Set  Member
//    static func  SetDescription_DisCount(description: String){
//        self.Description_DisCount=description;
//    }
//    // Set  Member
//    static func  SetPercent_DisCount(percent: String){
//        self.Percent_DisCount=percent;
//    }
//    // Set  Member
//    static func  SetBusinessId_DisCount(businessid: Int){
//        self.BusinessId_DisCount=businessid;
//    }
//    
//    
//    // Get  Member
//    func : Int  GetId_DisCount()
//    {
//    return  self.Id_DisCount ;
//    }
//    // Get  Member
//    func String  GetText_DisCount()
//    {
//    return  self.Text_DisCount;
//    }
//    // Get  Member
//    static func  GetImage_DisCount()-> String
//    {
//    return  self.Image_DisCount;
//    }
//    // Get  Member
//    static func  GetStartDate_DisCount()-> String
//    {
//    return  self.Startdate_DisCount;
//    }
//    // Get  Member
//    static func GetExpirationDate_DisCount()-> String {
//    return Expirationdate_DisCount;
//    }
//    // Get  Member
//    static func  GetDescription_DisCount()-> String{
//    return  self.Description_DisCount;
//    }
//    // Get  Member
//    static  func  GetPercent_DisCount()-> String{
//    return  self.Percent_DisCount
//    }
//    // Get  Member
//    static func  GetBusinessId_DisCount()-> Int
//    {
//    return  self.BusinessId_DisCount
//    }
//    
//    static func SetShowNotification(show: Bool){
//        self.ShowNotification=show;
//    }
//    static func GetShowNotification()-> Bool{
//    return  self.ShowNotification;
//    }
//    
//    static func SetShowNotificationId(id: Int){
//        self.ShowNotificationId=id;
//    }
//    static func GetShowNotificationId()-> Int {
//    return  self.ShowNotificationId;
//    }
//    
//    
//    static func SetSearchOffline(search: Bool){
//        self.SearchOffline=search;
//    }
//    static func GetSearchOffline()-> Bool{
//    return  self.SearchOffline;
//    }
//    
//    
//    static func SetSearchOnline(search: Bool){
//    SearchOnlinee=search;
//    }
//    static func GetSearchOnline()-> Bool {
//    return  self.SearchOnlinee;
//    }
//    
//    static func SetFilterProduct(filter: Bool){
//    self.FilterProduct=filter;
//    }
//    static func GetFilterProduct()-> Bool {
//    return  self.FilterProduct;
//    }
//    
//    static func SetcurLatitude(lat: double_t){
//    curLatitude=lat;
//    }
//    func Double GetcurLatitude(){
//    return  self.curLatitude;
//    }
//    
//    static func SetcurLongtitude(longt: Double){
//    curLongitude=longt;
//    }
//    
//    
//    static func GetcurLongitude()-> Double{
//        return self.curLongitude;
//    }
//    
//    
//    static func SetNotificationGooMorning(goomorning: Bool){
//        self.Notification_GoodMorning=goomorning;
//    }
//    static func GetNotificationGooMorning()-> Bool{
//        return self.Notification_GoodMorning;
//    }
//    
//    
//    static func SetBusinessTops(businessTops: Bool){
//        self.BusinessTops=businessTops;
//    }
//    
//    
//    static func GetBusinessTops() -> Double {
//        return self.BusinessTops;
//    }
//    
//    static func SetBusinessDisCountTops(businessTopsdiscount: Bool){
//    self.BusinessDiscountTops=businessTopsdiscount;
//    }
//    
//    static func GetBusinessDisCountTops()-> Bool{
//    return self.BusinessDiscountTops;
//    }
//    
//    
//    static func SetProductId(id: Int){
//    self.ProductId=id;
//    }
//    static func GetProductId()-> Int{
//    return self.ProductId;
//    }
//    
//    
//    static func SetNumber(id: Int){
//    self.Number=id;
//    }
//    
//    
//    static func GetNumber()-> Int{
//    return self.Number;
//    }
//    
//    
//    static func SetProductReceiver(productReciver: Bool){
//    ProductReciver=productReciver;
//    }
//    
//    static func GetProductReceiver() -> Bool{
//    return self.ProductReciver;
//    }
//    
//    static func SetType(type: Int){
//    self.Type=type;
//    }
//    
//    
//    static func GetType()-> Int {
//    return self.Type;
//    }
//
//}
