//
//  AutoLayoutTableViewCell.swift
//  AutoLayoutDemo
//
//  Created by lisheng on 16/10/27.
//  Copyright © 2016年 Eefung Software. All rights reserved.
//

import UIKit

class AutoLayoutTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var headImageV: UIImageView!
    @IBOutlet weak var contentLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.headImageV.layer.masksToBounds = true
        self.headImageV.layer.cornerRadius = self.headImageV.frame.size.height / 2.0
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(index: NSInteger)  {
        self.headImageV.image = UIImage.init(named: "logo")
        var nameString = String(index)
        var contentString = String(index)
        
        for item in 0 ... index{
            nameString = nameString.stringByAppendingString(String(item) )
            contentString = nameString.stringByAppendingString(String(nameString) )
            contentString = contentString.stringByAppendingString(contentString)
        }
        
        self.contentLable.text = contentString
        self.nameLable.text = nameString
        
    }
}
