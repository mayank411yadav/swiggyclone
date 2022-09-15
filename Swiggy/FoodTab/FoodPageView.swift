//
//  FoodPageView.swift
//  Swiggy
//
//  Created by Mayank Yadav on 04/08/22.
//

import UIKit

class FoodPageView: UIView {

    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var offCollectionView: UICollectionView!
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    @IBOutlet weak var Cheight: NSLayoutConstraint!
    @IBOutlet weak var theView: UIView!
    @IBOutlet weak var Vheight: NSLayoutConstraint!
    override init(frame: CGRect) {
            super.init(frame: frame)
            initView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initView()
        }
        
        func initView(){
            Bundle.main.loadNibNamed("FoodPageView", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = self.bounds
            containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
        }


}

