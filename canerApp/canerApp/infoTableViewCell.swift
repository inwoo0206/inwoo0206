//
//  infoTableViewCell.swift
//  canerApp
//
//  Created by 권인우 on 11/26/23.
//

import UIKit

class infoTableViewCell: UITableViewCell {

    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var infoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
