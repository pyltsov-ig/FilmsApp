//
//  JSONModel.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import Foundation

class JSONModel {
    var original_title:String?
    var poster_path:String?
    var release_date:String?
    var overview:String?
    var vote_average:Double?
    var backdrop_path:String?
}

class TestModel {
    var testPic:String?
    var testTitle:String?
    var testYear:String?
    var testRating:String?
    
    init (testPic:String?, testTitle:String?, testYear: String?, testRating:String?) {
        self.testPic = testPic
        self.testTitle = testTitle
        self.testYear = testYear
        self.testRating = testRating
    }
}

var testArray:[TestModel] = [

    TestModel(testPic: "image1", testTitle: "Служебный роман", testYear: "1977", testRating: "4.7"),
    TestModel(testPic: "image2", testTitle: "Mr.Right", testYear: "2015", testRating: "4.9"),
    TestModel(testPic: "image3", testTitle: "Фильм 3", testYear: "2011", testRating: "5.8"),
    TestModel(testPic: "image4", testTitle: "Фильм 4", testYear: "2017", testRating: "3.2"),
    TestModel(testPic: "image5", testTitle: "Фильм 5", testYear: "2000", testRating: "4.3"),
    TestModel(testPic: "image6", testTitle: "Фильм 6", testYear: "2010", testRating: "2.7"),
    TestModel(testPic: "image7", testTitle: "Фильм 7", testYear: "1956", testRating: "7.9"),
    TestModel(testPic: "image8", testTitle: "Фильм 8", testYear: "2001", testRating: "6.7"),
    TestModel(testPic: "image9", testTitle: "Фильм 9", testYear: "2006", testRating: "3.7"),
    TestModel(testPic: "image10", testTitle: "Фильм 10", testYear: "2007", testRating: "7.7"),
    TestModel(testPic: "image11", testTitle: "Фильм 11", testYear: "2018", testRating: "9.7"),
    TestModel(testPic: "image12", testTitle: "Фильм 12", testYear: "2013", testRating: "7.1"),
    TestModel(testPic: "image13", testTitle: "Фильм 13", testYear: "2002", testRating: "8.4"),
    TestModel(testPic: "image14", testTitle: "Фильм 14", testYear: "2014", testRating: "1.2"),
    TestModel(testPic: "image15", testTitle: "Фильм 15", testYear: "2015", testRating: "4.8"),

]
