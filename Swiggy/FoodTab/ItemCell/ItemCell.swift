//
//  ItemCell.swift
//  Swiggy
//
//  Created by Mayank Yadav on 04/08/22.
//

import UIKit

class ItemCell: UICollectionViewCell {

    @IBOutlet weak var ItemCellView: UIView!
    @IBOutlet weak var itemImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ItemCellView.layer.cornerRadius = 15
        itemImage.layer.cornerRadius = 15
    }

}
