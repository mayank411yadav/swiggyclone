//
//  HomeController.swift
//  Swiggy
//
//  Created by Mayank Yadav on 01/08/22.
//
import Foundation
import UIKit

class HomeController: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var topView: UIView!
    
    
    @IBOutlet weak var btnSwiggy: UIButton!
    @IBOutlet weak var btnFood: UIButton!
    @IBOutlet weak var btnMart: UIButton!
    @IBOutlet weak var btnGenie: UIButton!
  
    override init(frame: CGRect) {
            super.init(frame: frame)
            initView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initView()
        }
        
        func initView(){
            Bundle.main.loadNibNamed("HomeController", owner: self, options: nil)
            addSubview(containerView)
            containerView.frame = self.bounds
            containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
            
        }


}
