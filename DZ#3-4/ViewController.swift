//
//  ViewController.swift
//  DZ#3-4
//
//  Created by Фархат Сталбек уулу on 9/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var ordersTableView: UITableView!
    var order: [Order] = [Order(orderImage: "Glovo", orderFrom: "Oasis", order1: "1 х Запеченный донер - курица", order2: "1 х Запеченный донер - говядина", totalCost: 435.00)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "order_cell", for: indexPath) as! OrderCell
        cell.orderImageImageView.image = UIImage(named: "Glovo")
        cell.orderFromLabel.text = order[indexPath.row].orderFrom
        cell.order1Label.text = order[indexPath.row].order1
        cell.order2Label.text = order[indexPath.row].order2
        cell.totalCostLabel.text = String(order[indexPath.row].totalCost)
        cell.layer.borderWidth = 0.2
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
