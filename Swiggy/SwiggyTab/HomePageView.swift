//
//  HomePageView.swift
//  Swiggy
//
//  Created by Mayank Yadav on 01/08/22.
//
import Foundation
import UIKit

class HomePageView: UIView {


    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var restuarantCollectionView: UICollectionView!
    
  
    @IBOutlet weak var discountCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            initView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initView()
        }
        
        func initView(){
            Bundle.main.loadNibNamed("HomePageView", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = self.bounds
            containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
        }

}
