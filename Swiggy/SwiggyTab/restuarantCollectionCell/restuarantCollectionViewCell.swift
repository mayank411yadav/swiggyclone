//
//  restuarantCollectionViewCell.swift
//  Swiggy
//
//  Created by Mayank Yadav on 01/08/22.
//

import UIKit

class restuarantCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var restuarantImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        restuarantImage.layer.cornerRadius = 15
    }

}
