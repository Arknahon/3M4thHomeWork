//
//  OrderTableViewCell.swift
//  hw4
//
//  Created by nurmuhammed on 14/12/22.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cafeNameLabel: UILabel!
    
    
    @IBOutlet weak var firstOrderedFoodNameLabel: UILabel!
    
    
    @IBOutlet weak var firstOrderedFoodQuantityLabel: UILabel!
    
    
    @IBOutlet weak var secondOrderedFoodNameLabel: UILabel!
    
    
    @IBOutlet weak var secondOrderedFoodQuantityLabel: UILabel!
    
    
    @IBOutlet weak var totalPriceLabel: UILabel!
    
    
    @IBOutlet weak var repeatButton: UIButton!
    
    @IBOutlet weak var foodImageView: UIImageView!
    
    
    @IBAction func repeatOrder(_ sender: Any) {
        for order in orders {
            if order.cafeName == cafeNameLabel.text! && order.firstFoodName == firstOrderedFoodNameLabel.text! && order.secondFoodName == secondOrderedFoodNameLabel.text!{
                let repeatedOrder = order
                orders.insert(repeatedOrder, at: 0)
                break
            }
        }
    }
    
    
    override func layoutSubviews() {
        repeatButton.layer.cornerRadius = 5
        foodImageView.layer.cornerRadius = 15
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
