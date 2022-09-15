//
//  GeniePageView.swift
//  Swiggy
//
//  Created by Mayank Yadav on 09/08/22.
//

import UIKit

class GeniePageView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var OfferCollectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var EggView: UIView!
    @IBOutlet weak var EggMainView: UIView!
    @IBOutlet weak var vegView: UIView!
    @IBOutlet weak var BestSellerView: UIView!
    @IBOutlet weak var Theight: NSLayoutConstraint!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            initView()
        EggMainView?.layer.cornerRadius = 15
        EggMainView?.layer.masksToBounds = true
        EggView.layer.cornerRadius = 15
        EggView.layer.masksToBounds = true
        vegView.layer.cornerRadius = 15
        vegView.layer.borderWidth = 1
        vegView.layer.borderColor = UIColor.black.cgColor
        BestSellerView.layer.cornerRadius = 15
        BestSellerView.layer.borderWidth = 1
        BestSellerView.layer.borderColor = UIColor.black.cgColor
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            //EggView.layer.cornerRadius = 15
            
            initView()
        }
        
        func initView(){
            Bundle.main.loadNibNamed("GeniePageView", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = self.bounds
            containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
        }

}
