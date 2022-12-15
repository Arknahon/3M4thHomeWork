//
//  OrderModel.swift
//  hw4
//
//  Created by nurmuhammed on 14/12/22.
//

import UIKit
import Foundation

struct Order {
    var image: UIImage
    var cafeName: String
    var forFirstQuantity: Int
    var forSecondQuantity: Int
    var firstFoodName: String
    var secondFoodName: String
    var total: Int
    var firstPrice: Int
    var secondPrice: Int
    
    init(image: UIImage, cafeName: String, forFirstQuantity: Int, forSecondQuantity: Int, firstFoodName: String, secondFoodName: String, firstPrice: Int, secondPrice: Int) {
        self.image = image
        self.cafeName = cafeName
        self.forFirstQuantity = forFirstQuantity
        self.forSecondQuantity = forSecondQuantity
        self.firstFoodName = firstFoodName
        self.secondFoodName = secondFoodName
        self.firstPrice = firstPrice
        self.secondPrice = secondPrice
        total = firstPrice + secondPrice
    }
}




var orders: [Order] = [
    
    Order(image: UIImage(named: "food")!, cafeName: "Oasis", forFirstQuantity: 1, forSecondQuantity: 2, firstFoodName:  "Запеченный донер – курица", secondFoodName: "Запеченный чили донер – говядина", firstPrice: 200, secondPrice: 235),
    
    Order(image: UIImage(named: "food2")!, cafeName: "Империя пиццы", forFirstQuantity: 2, forSecondQuantity: 1, firstFoodName: "Пепперони", secondFoodName: "Цезарь", firstPrice: 600, secondPrice: 850)
]
