//
//  MartPageView.swift
//  Swiggy
//
//  Created by Mayank Yadav on 08/08/22.
//

import UIKit

class MartPageView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var CouponsCollectionView: UICollectionView!
    @IBOutlet weak var groceryCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            initView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initView()
        }
        
        func initView(){
            Bundle.main.loadNibNamed("MartPageView", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = self.bounds
            containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
        }



}
