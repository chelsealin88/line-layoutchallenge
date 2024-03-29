//
//  SettingTableViewCell.swift
//  Layout Challenge
//
//  Created by Chelsea Lin on 2019/6/17.
//  Copyright © 2019 chelsea lin. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconimage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(_ info: Info) {
        
        titleLabel.text = info.title
        iconimage.image = UIImage(named: info.imagename)
        
    }
    
//    func updateCell(with model:Any) {
//        if let modelInfo = model as? Info {
//
//        }
//    }

}
