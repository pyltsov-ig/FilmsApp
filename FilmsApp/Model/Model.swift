//
//  Model.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 06.10.2021.
//

import Foundation


class Model {
    var testArray:[Item] = [

        Item(id: 1, testPic: "image1", testTitle: "Служебный роман", testYear: 1977, testRating: 4.7, isLiked: false),
        Item(id: 2, testPic: "image2", testTitle: "Mr.Right", testYear: 2015, testRating: 4.9, isLiked: false),
        Item(id: 3, testPic: "image3", testTitle: "Фильм 3", testYear: 2011, testRating: 5.8, isLiked: false),
        Item(id: 4, testPic: "image4", testTitle: "Фильм 4", testYear: 2017, testRating: 3.2, isLiked: false),
        Item(id: 5, testPic: "image5", testTitle: "Фильм 5", testYear: 2000, testRating: 4.3, isLiked: true),
        Item(id: 6, testPic: "image6", testTitle: "Фильм 6", testYear: 2010, testRating: 2.7, isLiked: false),
        Item(id: 7, testPic: "image7", testTitle: "Фильм 7", testYear: 1956, testRating: 7.9, isLiked: false),
        Item(id: 8, testPic: "image8", testTitle: "Фильм 8", testYear: 2001, testRating: 6.7, isLiked: false),
        Item(id: 9, testPic: "image9", testTitle: "Фильм 9", testYear: 2006, testRating: 3.7, isLiked: true),
        Item(id: 10, testPic: "image10", testTitle: "Фильм 10", testYear: 2007, testRating: 7.7, isLiked: false),
        Item(id: 11, testPic: "image11", testTitle: "Фильм 11", testYear: 2018, testRating: 9.7, isLiked: false),
        Item(id: 12, testPic: "image12", testTitle: "Фильм 12", testYear: 2013, testRating: 7.1, isLiked: false),
        Item(id: 13, testPic: "image13", testTitle: "Фильм 13", testYear: 2002, testRating: 8.4, isLiked: false),
        Item(id: 14, testPic: "image14", testTitle: "Фильм 14", testYear: 2014, testRating: 1.2, isLiked: false),
        Item(id: 15, testPic: "image15", testTitle: "Фильм 15", testYear: 2015, testRating: 4.8, isLiked: true),
    ]
    
    func showLikedItems() -> [Item] {
        
        var likedFilmsArray:[Item] = []
        
        for i in testArray {
            if i.isLiked == true {
                likedFilmsArray.append(i)
            }
        }
        
        
        return likedFilmsArray
    }
}

class Item {
    var id:Int?
    var testPic:String?
    var testTitle:String?
    var testYear:Int?
    var testRating:Double?
    var isLiked:Bool
    
    init(id:Int?, testPic:String?, testTitle:String?, testYear:Int?, testRating:Double?, isLiked:Bool) {
        self.id = id
        self.testPic = testPic
        self.testTitle = testTitle
        self.testYear = testYear
        self.testRating = testRating
        self.isLiked = isLiked
    }
}

