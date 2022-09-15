//
//  FoodVC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 02/08/22.
//

import Foundation
import UIKit

class FoodVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
   // private let layout = UICollectionViewFlowLayout()


    var mainView = FoodPageView()
   
    
    var arrayData = ["","","","","","","","","","","","","","",""]
    var arrayItemData = ["offCell", "offCell", "offCell", "offCell","offCell"]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad(){
        super.viewDidLoad()
       
        self.mainView.itemCollectionView.delegate = self
        self.mainView.itemCollectionView.dataSource = self
        self.mainView.offCollectionView.delegate = self
        self.mainView.offCollectionView.dataSource = self
        task()
    }
   
    
    override func viewWillLayoutSubviews() {
        self.mainView.Cheight?.constant = self.mainView.itemCollectionView.contentSize.height
       
    }
    private func reloadData() {
        self.mainView.itemCollectionView.reloadData()
        self.mainView.itemCollectionView.invalidateIntrinsicContentSize()
      
        
        }
    
//    private func changeSize() {
//
//    }
    
    

    func task() {
       
        mainView.itemCollectionView.register(UINib(nibName: "ItemCell", bundle: nil),  forCellWithReuseIdentifier: "ItemCell")
        
        mainView.offCollectionView.register(UINib(nibName: "OffCell", bundle: nil),  forCellWithReuseIdentifier: "OffCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == mainView.offCollectionView) {
            return arrayItemData.count
        }
            
        return arrayData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
           let cell = mainView.itemCollectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ItemCell
        if (collectionView == mainView.offCollectionView) {
            let cell2 = mainView.offCollectionView.dequeueReusableCell(withReuseIdentifier: "OffCell", for: indexPath) as? OffCell
            return cell2!
        }
       
        return cell!
         
      
    }
    
    
}

