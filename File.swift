//
//  File.swift
//  ShahrMa
//
//  Created by parsa on 10/3/15.
//  Copyright (c) 2015 Ariana. All rights reserved.
//

import Foundation

public  class  Instruction {
    
    
    //Database table name
    public static let TABLE_NAME_Subset:String="Subset"
    public static let TABLE_NAME_Collection:String="Collection"
    public static let TABLE_NAME_Member:String="Member"
    public static let TABLE_NAME_Opinion:String="Opinion"
    public static let TABLE_NAME_Business_Tops:String="Business_Tops"
    public static let TABLE_NAME_Business_DisCount:String="Business_DisCount"
    public static let TABLE_NAME_Business_Image:String="BusinessImage"
    public static let TABLE_NAME_Business:String="Business"
    public static let TABLE_NAME_City:String="City"
    public static let TABLE_NAME_BookMark:String="BookMark"
    public static let TABLE_NAME_Area:String="Area"
    public static let TABLE_NAME_UpdateTime="UpdateTime"
    public static let TABLE_NAME_Search:String="Search"
    public static let TABLE_NAME_Like:String="Like"
    public static let TABLE_NAME_Interest:String="Interest"
    public static let TABLE_NAME_Notification:String="Notification"
    public static let TABLE_NAME_Show_Notification:String="Show_Notification"
    public static let TABLE_NAME_FieldActivity:String="FieldActivity"
    public static let TABLE_NAME_DisCount:String="DisCount"
    public static let TABLE_NAME_DisCount_Member:String="DisCountMember"
    public static let TABLE_NAME_Like_DisCount:String="LikeDisCount"
    public static let TABLE_NAME_Advertisment:String="Advertisment"
    public static let TABLE_NAME_Product_Member:String="Product_Member"
    public static let TABLE_NAME_Product:String="Product"
    public static let TABLE_NAME_Collection_Product:String="Collection_Product"
    public static let TABLE_NAME_Property_Product:String="Property_Product"
    public static let TABLE_NAME_Value_Product:String="Value_Product"
    public static let TABLE_NAME_Subset_Product:String="Subset_Product"
    public static let TABLE_NAME_SubsetProperty_Product:String="SubsetProperty_Product"
    
    
    
    
    
    
    //Notification Table Columns names
    public static let ID_Notification:String="Id";
    public static let OpinionType_Notification:String="OpinionType";
    public static let ErJa_Notification:String="Erja";
    public static let ExecutionTime_Notification:String="ExecutionTime";
    public static let Description_Notification:String="Description";
    public static let ExpirationDate_Notification:String="ExpirationDate";
    public static let City_Notification:String="City";
    public static let CityId_Notification:String="CityId";
    public static let Subset_Notification:String="Subset";
    public static let SubsetId_Notification:String="SubsetId";
    public static let TITEL_Notification:String="Title";
    
    
    //ProductMember Table Columns names
    public static let ID_ProductMember:String="Id";
    public static let MEMBERID__ProductMember:String="MemberId";
    public static let NAME_ProductMember:String="Name";
    public static let PROPERTY_ProductMember:String="Property";
    public static let PRICE_ProductMember:String="Price";
    public static let LATITUDE_ProductMember:String="Latutude";
    public static let ADAPTIVE_ProductMember:String="Adaptive";
    public static let DESCRIPTION_ProductMember="Description";
    public static let IMAGE_ProductMember:String="Image";
    public static let PHONE_ProductMember:String="Phone";
    public static let MOBILE_ProductMembe:String="Adaptive";
    public static let ADDRESS_ProductMembe:String="Description";
    public static let EMAIL_ProductMembe:String="Image";
    public static let SUBSETID_ProductMembe:String="Phone";
    public static let AREAID_ProductMembe:String="Phone";
    public static let CITYID_ProductMembe:String="Phone";
    
    
    //Value Table Columns names
    public static let ID_VALUE_PRODUCT:String="Id";
    public static let NAME_VALUE_PRODUCT:String="Name";
    public static let IDPROPERTY_VALUE_PRODUCT:String="IdProperty";
    
    // SubsetProperty_Product  Table Columns names
    public static let ID_SubsetProperty_PRODUCT:String="Id";
    public static let PRODUCTSUBSETID_SubsetProperty_PRODUCT:String="ProductSubsetId";
    public static let PROPERTYID_SubsetProperty_PRODUCT:String="PropertyId";
    
    //Propertiy Table Columns names
    public static let ID_PROPERTY_PRODUCT:String="Id";
    public static let NAME_PROPERTY_PRODUCT:String="Name";
    public static let Type_PROPERTY_PRODUCT:String="Type";
    
    
    
    //FieldActivity Table Columns names
    public static let ID_FIELDACTIVITY:String="Id";
    public static let ACTIVITY_FIELDACTIVITY:String="Activity";
    
    
    //UpdateTime Table Columns names
    public static let ID_Update:String = "Id";
    public static let DATE_Update:String = "Date";
    
    //Area Table Columns names
    public static let ID_area:String = "Id";
    public static let NAME_area:String = "AreaName";
    public static let CITYID_area:String  = "CityId";
    
    
    //Bookmark Table Columns names
    public static let ID_bookmark:String = "Id";
    public static let BUSINESSID_bookmark:String = "BusinessId";
    public static let MEMBERID_bookmark:String = "MemberId";
    
    //Advertisment Table Columns names
    public static let ID_Advertisment = "Id";
    public static let IMAGE_Advertisment:String = "Image";
    public static let LINK_Advertisment:String = "Link";
    public static let TYPE_Advertisment:String = "Type";
    
    //Business Image Table Columns names
    public static let ID_BusinessImage = "Id";
    public static let BUSINESSID_BusinessImage:String = "BusinessId";
    public static let SRC_BusinessImage:String = "Src";
    
    
    
    //ShowNotification Table Columns names
    public static let ID_SHOWNOTIFICATION:String = "Id";
    public static let BUSINESSID_SHOWNOTIFICATION:String = "BusinessId";
    public static let SHOW_SHOWNOTIFICATION:String = "Show";
    
    
    
    //City Table Columns names
    public static let ID_city:String = "Id";
    public static let NAME_city:String = "Name";
    public static let PROVINCEID_city:String = "ProvinceId";
    
    //Like Table Columns names
    public static let ID_Like:String = "Id";
    public static let LIKE_Like:String = "Like";
    public static let MEMBERID_Like:String = "MemberId";
    public static let OPINION_Like:String = "OpinionId";
    
    //Interest Table Columns names
    
    public static let SUBSETID_Interest:String = "SubsetId";
    public static let MEMBERID_Interest:String = "MemberId";
    
    
    //LikeDisCount Table Columns names
    public static let ID_LIKEDISCOUNT:String = "Id";
    public static let LIKECOUNT_LIKEDISCOUNT:String = "Like";
    public static let MEMBERID_LIKEDISCOUNT:String = "MemberId";
    public static let DISCOUNTID_LIKEDISCOUNT:String = "DisCountId";
    public static let BUSINESSID_LIKEDISCOUNT:String = "BusinessId";
    
    //DisCoutn Table Columns names
    public static let ID_DISCOUNT:String = "Id";
    public static let TEXT_DISCOUNT:String = "Text";
    public static let IMAGE_DISCOUNT:String = "Image";
    public static let STARTDATE_DISCOUNT:String = "StartDate";
    public static let EXPIRATIONDATE_DISCOUNT:String = "ExpirationDate";
    public static let DESCRIPTION_DISCOUNT = "Description";
    public static let PERCENT_DISCOUNT:String = "Percent";
    public static let BUSINESSID_DISCOUNT:String = "BusinessId";
    public static let LIKE_DISCOUNT:String = "Like";
    public static let DISLIKE_DISCOUNT:String = "DisLike";
    
    //DisCoutnMember Table Columns names
    public static let ID_DISCOUNTMEMBER:String = "Id";
    public static let TEXT_DISCOUNTMEMBER:String = "Text";
    public static let IMAGE_DISCOUNTMEMBER:String = "Image";
    public static let STARTDATE_DISCOUNTMEMBER:String = "StartDate";
    public static let EXPIRATIONDATE_DISCOUNTMEMBER:String = "ExpirationDate";
    public static let DESCRIPTION_DISCOUNTMEMBER = "Description";
    public static let PERCENT_DISCOUNTMEMBER:String = "Percent";
    public static let BUSINESSID_DISCOUNTMEMBER = "BusinessId";
    
    //Opinion Table Columns names
    public static let ID_opinion:String = "Id";
    public static let DESCRIPTION_opinion:String = "Description";
    public static let DATE_opinion:String = "Date";
    public static let MEMBERNAME_opinion:String = "MemberName";
    public static let ERJA_opinion:String = "Erja";
    public static let COUNTLIKE_opinion:String = "CountLike";
    public static let COUNTDISLIKE_opinion:String = "CountDisLike";
    
    
    //subset Table Columns names
    public static let ID_subset:String = "Id";
    public static let NAME_subset:String = "SubsetName";
    public static let COLLECTIONID_subset:String = "CollectionId";
    
    //subset_Product Table Columns names
    public static let ID_subset_Product:String = "Id";
    public static let NAME_subset_Product:String = "SubsetName";
    public static let COLLECTIONID_subset_Product:String = "CollectionId";
    
    
    //collection Table Columns names
    public static let ID_colection:String = "Id";
    public static let NAME_collection:String = "CollectionName";
    
    
    //collection_product Table Columns names
    public static let ID_colection_Product:String = "Id";
    public static let NAME_collection_Product:String = "CollectionName";
    
    
    //Member Table Columns names
    public static let ID_member:String = "id";
    public static let NAME_member:String = "Name";
    public static let EMAIL_member:String = "Email";
    public static let MOBILE_member:String = "Mobile";
    public static let AGE_member:String = "Age";
    public static let SEX_member:String = "Sex";
    public static let USERNAME_member:String = "UserName";
    public static let PASSWORD_member:String = "Password";
    public static let CITYID_member:String = "CityId";
    
    
    //business Table Columns names
    public static let ID_business:String = "Id";
    public static let MARKET_business:String = "Market";
    public static let CODE_business:String = "Code";
    public static let PHONE_business:String = "Phone";
    public static let MOBILE_business:String = "Mobile";
    public static let FAX_business:String = "Fax";
    public static let EMAIL_business:String = "Email";
    public static let BUSINESSOWNER_business:String = "BusinessOwner";
    public static let ADDRESS_business:String = "Address";
    public static let DESCRIPTION_business:String = "Description";
    public static let STARTDATE_business:String = "Startdate";
    public static let EXPIRATIONDATE_business:String = "ExpirationDate";
    public static let INACTIVE_business:String = "Inactive";
    public static let SUBSET_business:String = "Subset";
    public static let SUBSETID_business:String = "SubsetId";
    public static let LONGITUDE_business:String = "Longitude";
    public static let LATITUDE_business:String = "Latitude";
    public static let SRC_business:String = "Src";
    public static let AREAID_business:String = "AreaId";
    public static let AREA_business:String = "Area";
    public static let USER_business:String = "User";
    public static let CITYID_business:String = "CityId";
    public static let USERID_business:String = "UserId";
    public static let FIELD1_business:String = "Field1";
    public static let FIELD2_business:String = "Field2";
    public static let FIELD3_business:String = "Field3";
    public static let FIELD4_business:String = "Field4";
    public static let FIELD5_business:String = "Field5";
    public static let FIELD6_business:String = "Field6";
    public static let FIELD7_business:String = "Field7";
    public static let RATECOUNT_business:String = "RateCount";
    public static let RATEVALUE_business:String = "RateValue";
    
    
    // SQL statement to create area table
    public static let CREATE_TABLE_Area:String = "CREATE TABLE  IF  NOT EXISTS Area  (Id INTEGER PRIMARY KEY ,AreaName TEXT,CityId INTEGER )";
    
    
    // SQL statement to create Value_Product table
    public static let CREATE_TABLE_Value_Product:String = "CREATE TABLE  IF  NOT EXISTS Value_Product (Id INTEGER PRIMARY KEY ,Name TEXT,IdProperty INTEGER );";
    
    // SQL statement to create SubsetProperty_Product table
    public static let CREATE_TABLE_SubsetProperty_Product:String = "CREATE TABLE  IF  NOT EXISTS  SubsetProperty_Product (Id INTEGER PRIMARY KEY ,ProductSubsetId INTEGER,PropertyId INTEGER );";
    
    
    // SQL statement to create Property_Product table
    public static let CREATE_TABLE_Property_Product:String = "CREATE TABLE  IF  NOT EXISTS Property_Product ( Id INTEGER PRIMARY KEY , Name TEXT , Type INTEGER );";
    
    
    // SQL statement to create area table
    public static let CREATE_TABLE_BusinessImage:String = "CREATE TABLE  IF  NOT EXISTS BusinessImage (Id INTEGER PRIMARY KEY ,BusinessId INTEGER,Src TEXT);";
    
    
    //SQL statement to create notification table
    public static let CREATE_TABLE_Notification:String = "CREATE TABLE  IF  NOT EXISTS Notification (Id INTEGER PRIMARY KEY ,OpinionType INTEGER,ErJa INTEGER,ExecutionTime BOOLEAN ,Description TEXT ,ExpirationDate TEXT ,City TEXT,CityId INTEGER,Subset TEXT ,SubsetId INTEGER,Title TEXT);";
    
    //SQL statement to create DisCoutn table
    public static let CREATE_TABLE_DisCount:String = "CREATE TABLE  IF  NOT EXISTS DisCount (Id INTEGER PRIMARY KEY ,Text TEXT,Image TEXT,StartDate TEXT ,ExpirationDate TEXT ,Description TEXT ,Percent TEXT,BusinessId INTEGER,Like INTEGER,DisLike INTEGER ,Src TEXT);";
    
    //SQL statement to create DisCoutnMember table
    public static let CREATE_TABLE_DisCountMember:String = "CREATE TABLE  IF  NOT EXISTS DisCountMember (Id INTEGER PRIMARY KEY ,Text TEXT,Image TEXT,StartDate TEXT ,ExpirationDate TEXT ,Description TEXT ,Percent TEXT,BusinessId INTEGER,Src TEXT);";
    
    //SQL statement to create LikeDisCoutn table
    public static let CREATE_TABLE_LikeDisCount:String = "CREATE TABLE  IF  NOT EXISTS LikeDisCount (Id INTEGER PRIMARY KEY AUTOINCREMENT ,Like BOOLEAN,MemberId INTEGER,DisCountId INTEGER,BusinessId INTEGER);";
    // SQL statement to create fieldactivity table
    public static let CREATE_TABLE_FieldActivity:String = "CREATE TABLE  IF  NOT EXISTS FieldActivity (Id INTEGER PRIMARY KEY ,Activity TEXT);";
    
    // SQL statement to create city table
    public static let CREATE_TABLE_City :String = "CREATE TABLE  IF  NOT EXISTS City (Id INTEGER PRIMARY KEY ,Name TEXT,ProvinceId INTEGER);";
    
    // SQL statement to create Advertisment table
    public static let CREATE_TABLE_Advertisment :String = "CREATE TABLE  IF  NOT EXISTS Advertisment (Id INTEGER PRIMARY KEY ,Image TEXT,Link TEXT,Type INTEGER);";
    
    // SQL statement to create ZamanSanj table
    public static let CREATE_TABLE_Update_Time:String = "CREATE TABLE  IF  NOT EXISTS UpdateTime (Id INTEGER PRIMARY KEY AUTOINCREMENT , Date TEXT );";
    
    
    
    // SQL statement to create ProductMember table
    public static let CREATE_TABLE_ProductMember :String = "CREATE TABLE  IF  NOT EXISTS Member_Product (Id INTEGER PRIMARY KEY ,MemberId INTEGER ,Name TEXT ,Property TEXT ,Price TEXT ,Latitude TEXT ,Longtiude TEXT ,Adaptive Boolean ,Description TEXT ,Image TEXT ,Phone TEXT ,Mobile TEXT ,Address TEXT ,Email TEXT ,SubsetId INTEGER ,AreaId INTEGER,CityId INTEGER);";
    
    
    // SQL statement to create Search table
    public static let CREATE_TABLE_Search :String = "CREATE TABLE  IF  NOT EXISTS Search (Id INTEGER PRIMARY KEY ,Market TEXT ,Code TEXT ,Phone TEXT ,Mobile TEXT ,Fax TEXT ,Email TEXT ,BusinessOwner TEXT ,Address TEXT ,Description TEXT ,Startdate TEXT ,ExpirationDate TEXT ,Inactive TEXT ,Subset TEXT ,SubsetId INTEGER ,Latitude REAL,Longitude REAL,AreaId INTEGER ,Area TEXT ,ser TEXT ,CityId INTEGER ,UserId INTEGER,Field1 INTEGER,Field2 INTEGER,Field3 INTEGER,Field4 INTEGER,Field5 INTEGER,Field6 INTEGER,Field7 INTEGER,RateCount INTEGER ,RateValue DOUBLE ,Src TEXT);";
    
    
    // SQL statement to create business_disCount table
    public static let CREATE_TABLE_Business_DisCount :String = "CREATE TABLE  IF  NOT EXISTS Business_DisCount (Id INTEGER PRIMARY KEY ,Market TEXT ,Code TEXT ,Phone TEXT ,Mobile TEXT ,Fax TEXT ,Email TEXT ,BusinessOwner TEXT ,Address TEXT ,Description TEXT ,Startdate TEXT ,ExpirationDate TEXT ,Inactive TEXT ,Subset TEXT ,SubsetId INTEGER ,Latitude REAL,Longitude REAL,AreaId INTEGER ,Area TEXT ,ser TEXT ,CityId INTEGER ,UserId INTEGER,Field1 INTEGER,Field2 INTEGER,Field3 INTEGER,Field4 INTEGER,Field5 INTEGER,Field6 INTEGER,Field7 INTEGER,RateCount INTEGER ,RateValue DOUBLE ,Src TEXT);";
    
    // SQL statement to create business_tops table
    public static let CREATE_TABLE_Business_Tops :String = "CREATE TABLE  IF  NOT EXISTS Business_Tops (Id INTEGER PRIMARY KEY ,Market TEXT ,Code TEXT ,Phone TEXT ,Mobile TEXT ,Fax TEXT ,Email TEXT ,BusinessOwner TEXT ,Address TEXT ,Description TEXT ,Startdate TEXT ,ExpirationDate TEXT ,Inactive TEXT ,Subset TEXT ,SubsetId INTEGER ,Latitude REAL,Longitude REAL,AreaId INTEGER ,Area TEXT ,ser TEXT ,CityId INTEGER ,UserId INTEGER,Field1 INTEGER,Field2 INTEGER,Field3 INTEGER,Field4 INTEGER,Field5 INTEGER,Field6 INTEGER,Field7 INTEGER,RateCount INTEGER ,RateValue DOUBLE ,Src TEXT);";
    
    // SQL statement to create business table
    public static let CREATE_TABLE_Business :String = "CREATE TABLE  IF  NOT EXISTS Business (Id INTEGER PRIMARY KEY ,Market TEXT ,Code TEXT ,Phone TEXT ,Mobile TEXT ,Fax TEXT ,Email TEXT ,BusinessOwner TEXT ,Address TEXT ,Description TEXT ,Startdate TEXT ,ExpirationDate TEXT ,Inactive TEXT ,Subset TEXT ,SubsetId INTEGER ,Latitude REAL,Longitude REAL,AreaId INTEGER ,Area TEXT ,ser TEXT ,CityId INTEGER ,UserId INTEGER,Field1 INTEGER,Field2 INTEGER,Field3 INTEGER,Field4 INTEGER,Field5 INTEGER,Field6 INTEGER,Field7 INTEGER,RateCount INTEGER ,RateValue DOUBLE ,Src TEXT);";
    
    // SQL statement to create Like table
    public static let CREATE_TABLE_Like :String = "CREATE TABLE  IF  NOT EXISTS Like (Id INTEGER PRIMARY KEY ,Like BOOLEAN,MemberId TEXT,OpinionID INTEGER);";
    
    // SQL statement to create Interest table
    public static let CREATE_TABLE_Interest:String = "CREATE TABLE  IF  NOT EXISTS Interest (Id INTEGER PRIMARY KEY AUTOINCREMENT ,SubsetId INTEGER,MemberId INTEGER);";
    
    // SQL statement to create Opinion table
    public static let CREATE_TABLE_Opinion :String = "CREATE TABLE  IF  NOT EXISTS Opinion (Id INTEGER PRIMARY KEY ,Description TEXT,Date TEXT,Erja INTEGER,CountLike INTEGER,CountDisLike INTEGER,MemberName TEXT);";
    
    
    // SQL statement to create Member table
    public static let CREATE_TABLE_Member :String = "CREATE TABLE  IF  NOT EXISTS Member (Id INTEGER PRIMARY KEY,Name TEXT ,Email TEXT ,Mobile TEXT ,Age INTEGER ,Sex BOOLEAN ,UserName TEXT ,Password TEXT ,CityId INTEGER);";
    
    
    // SQL statement to create Collection table
    public static let CREATE_TABLE_Collection :String = "CREATE TABLE  IF  NOT EXISTS Collection (Id INTEGER PRIMARY KEY ,CollectionName TEXT);";
    
    // SQL statement to create Collection table
    public static let CREATE_TABLE_Collection_Product :String = "CREATE TABLE  IF  NOT EXISTS Product_Collection (Id INTEGER PRIMARY KEY ,CollectionName TEXT);";
    
    
    // SQL statement to create Subset table
    public static let CREATE_TABLE_Subset:String = "CREATE TABLE  IF  NOT EXISTS Subset (Id INTEGER PRIMARY KEY ,SubsetName TEXT,CollectionId INTEGER)";
    
    // SQL statement to create Subset_Product table
    public static let CREATE_TABLE_Subset_Product:String = "CREATE TABLE  IF  NOT EXISTS Product_Subset (Id INTEGER PRIMARY KEY ,SubsetName TEXT,CollectionId INTEGER);";
    
    
    
    // SQL statement to create bookmark table
    public static let CREATE_TABLE_Bookmark:String = "CREATE TABLE  IF  NOT EXISTS BookMark (Id INTEGER PRIMARY KEY AUTOINCREMENT,BusinessId INTEGER,MemberId INTEGER);";
    
    // SQL statement to create ShowNotification table
    public static let CREATE_TABLE_ShowNotification:String = "CREATE TABLE  IF  NOT EXISTS ShowNotification (Id INTEGER PRIMARY KEY,BusinessId INTEGER ,Show BOOLEAN);";

    
    
}