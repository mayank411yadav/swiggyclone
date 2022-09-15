//
//  OffCell.swift
//  Swiggy
//
//  Created by Mayank Yadav on 04/08/22.
//

import UIKit

class OffCell: UICollectionViewCell {

    @IBOutlet weak var offImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        offImage.layer.cornerRadius = 15
    }

}
