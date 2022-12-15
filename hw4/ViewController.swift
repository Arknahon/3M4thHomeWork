//
//  ViewController.swift
//  hw4
//
//  Created by nurmuhammed on 14/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ordersTableView: UITableView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Ваши заказы Glovo"
        // Do any additional setup after loading the view.
    }
}


extension ViewController: UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ordersTableView.dequeueReusableCell(withIdentifier: "order_cell", for: indexPath) as! OrderTableViewCell
        
        cell.foodImageView.image = orders[indexPath.row].image
        cell.cafeNameLabel.text = orders[indexPath.row].cafeName
        cell.firstOrderedFoodNameLabel.text = orders[indexPath.row].firstFoodName
        cell.firstOrderedFoodQuantityLabel.text = "\(orders[indexPath.row].forFirstQuantity) x"
        cell.secondOrderedFoodNameLabel.text = orders[indexPath.row].secondFoodName
        cell.secondOrderedFoodQuantityLabel.text = "\(orders[indexPath.row].forSecondQuantity) x"
        cell.totalPriceLabel.text = "\(orders[indexPath.row].total) KGS"
        
        cell.repeatButton.addTarget(self, action: #selector(repeatOrder), for: .touchUpInside)
        
        return cell 
    }
    
    @objc func repeatOrder() {
        ordersTableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

