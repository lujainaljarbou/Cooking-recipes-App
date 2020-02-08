//
//  TableViewCell.swift
//  Bakery Menu
//
//  Created by lujen aziz on 28/01/2020.
//  Copyright © 2020 Noura Aziz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lable1: UILabel!

  
    @IBOutlet weak var button: UIButton!
    
   
    @IBOutlet weak var iimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
