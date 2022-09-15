//
//  HomeVC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 02/08/22.
//

import Foundation
import UIKit

class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var mainView = HomePageView()
   
    
    var arrayData = ["discount", "discount", "discount", "discount", "discount"]
    var arrayRestaurantData = ["resturant", "resturant", "resturant", "resturant","resturant"]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad(){
        super.viewDidLoad()
         
        self.mainView.discountCollectionView.delegate = self
        self.mainView.discountCollectionView.dataSource = self
        self.mainView.restuarantCollectionView.delegate = self
        self.mainView.restuarantCollectionView.dataSource = self
        task()
    }

    func task() {
       
        mainView.discountCollectionView.register(UINib(nibName: "DiscountCell", bundle: nil),  forCellWithReuseIdentifier: "DiscountCell")
        
        mainView.restuarantCollectionView.register(UINib(nibName: "restuarantCollectionViewCell", bundle: nil),  forCellWithReuseIdentifier: "restuarantCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == mainView.restuarantCollectionView) {
            return arrayRestaurantData.count
        }
            
        return arrayData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
           let cell = mainView.discountCollectionView.dequeueReusableCell(withReuseIdentifier: "DiscountCell", for: indexPath) as? DiscountCell
        if (collectionView == mainView.restuarantCollectionView) {
            let cell2 = mainView.restuarantCollectionView.dequeueReusableCell(withReuseIdentifier: "restuarantCollectionViewCell", for: indexPath) as? restuarantCollectionViewCell
            return cell2!
        }
       
        return cell!
         
      
    }
   
    
    
    
}



