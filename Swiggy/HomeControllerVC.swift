//
//  HomeControllerVC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 01/08/22.
//

import Foundation
import UIKit


class HomeControllerVC : UIViewController {
    
    var mainView = HomeController()
    var pageController = TabViewC()
    
     override func loadView() {
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         setPageView()
         addChild(pageController)
        pageController.view.translatesAutoresizingMaskIntoConstraints = false
         mainView.topView.addSubview(pageController.view)
        NSLayoutConstraint.activate([pageController.view.leadingAnchor.constraint(equalTo: mainView.topView.leadingAnchor, constant: 0), pageController.view.trailingAnchor.constraint(equalTo: mainView.topView.trailingAnchor, constant: 0), pageController.view.topAnchor.constraint(equalTo: mainView.topView.topAnchor, constant: 0), pageController.view.bottomAnchor.constraint(equalTo: mainView.topView.bottomAnchor, constant: 0)])
        pageController.didMove(toParent: self)
    }
    
    func setPageView() {
        mainView.btnSwiggy.addTarget(self, action: #selector(TabClick), for: .touchUpInside)
        mainView.btnFood.addTarget(self, action: #selector(TabClick), for: .touchUpInside)
        mainView.btnMart.addTarget(self, action: #selector(TabClick), for: .touchUpInside)
        mainView.btnGenie.addTarget(self, action: #selector(TabClick), for: .touchUpInside)
        onClickSelectedTab(tag: 1)
    }
    
    @IBAction func TabClick(_ sender: UIButton){
        self.onClickSelectedTab(tag: sender.tag)
    }
    func onClickSelectedTab(tag:Int) {
        if tag == 1 {
            pageController.goToHomeVC()
        } else if tag == 2 {
            pageController.gotoFoodVC()
        } else if tag == 3 {
            pageController.goToMartVC()
        } else if tag == 4 {
            pageController.gotoGenieVC()
        }
    }
}
