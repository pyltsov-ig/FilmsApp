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
