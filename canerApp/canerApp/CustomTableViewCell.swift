//
//  CustomTableViewCell.swift
//  canerApp
//
//  Created by 권인우 on 11/22/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var cencerImage: UIImageView!
    @IBOutlet weak var cencerLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
