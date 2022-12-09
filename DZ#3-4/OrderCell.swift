//
//  File.swift
//  DZ#3-4
//
//  Created by Фархат Сталбек уулу on 9/12/22.
//

import Foundation
import UIKit

class OrderCell: UITableViewCell {
    @IBOutlet weak var orderImageImageView: UIImageView!
    @IBOutlet weak var orderFromLabel: UILabel!
    @IBOutlet weak var order1Label: UILabel!
    @IBOutlet weak var order2Label: UILabel!
    @IBOutlet weak var totalCostLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    @IBOutlet weak var repeatButton: UIButton!
    override func layoutSubviews() {
        orderImageImageView.layer.cornerRadius = 10
        
    }
}
