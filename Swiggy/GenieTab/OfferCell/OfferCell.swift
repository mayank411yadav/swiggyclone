//
//  OfferCell.swift
//  Swiggy
//
//  Created by Mayank Yadav on 10/08/22.
//

import UIKit

class OfferCell: UICollectionViewCell {

    @IBOutlet weak var saveBigView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        saveBigView.layer.cornerRadius = 15
        saveBigView.layer.borderWidth = 1
        saveBigView.layer.borderColor = UIColor.black.cgColor
    }

}
