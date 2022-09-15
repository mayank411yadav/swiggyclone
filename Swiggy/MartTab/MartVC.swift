//
//  MartVC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 02/08/22.
//

import Foundation
import UIKit

class MartVC: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    
    var mainView = MartPageView()
   
    
    var arrayData = ["FortuneOil", "biscuit", "namkeen", "detergent", "tea"]
    var arrayCouponsData = ["", "", "", "",""]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad(){
        super.viewDidLoad()
         
        self.mainView.groceryCollectionView.delegate = self
        self.mainView.groceryCollectionView.dataSource = self
        self.mainView.CouponsCollectionView.delegate = self
        self.mainView.CouponsCollectionView.dataSource = self
        task()
    }

    func task() {
       
        mainView.groceryCollectionView.register(UINib(nibName: "GroceryCell", bundle: nil),  forCellWithReuseIdentifier: "GroceryCell")
        
        mainView.CouponsCollectionView.register(UINib(nibName: "CouponsCell", bundle: nil),  forCellWithReuseIdentifier: "CouponsCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if (collectionView == mainView.CouponsCollectionView) {
            return arrayCouponsData.count
        }
            
        return arrayData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
           let cell = mainView.groceryCollectionView.dequeueReusableCell(withReuseIdentifier: "GroceryCell", for: indexPath) as? GroceryCell
        cell?.myGroceryimg.image = UIImage(named: arrayData[indexPath.row])
        
        if (collectionView == mainView.CouponsCollectionView) {
            let cell2 = mainView.CouponsCollectionView.dequeueReusableCell(withReuseIdentifier: "CouponsCell", for: indexPath) as? CouponsCell
            return cell2!
        }
       
        return cell!
         
      
    }
    
}
