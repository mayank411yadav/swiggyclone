//
//  GenieVC.swift
//  Swiggy
//
//  Created by Mayank Yadav on 02/08/22.
//

import Foundation
import UIKit

class GenieVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource{
  
    
    var mainView = GeniePageView()
   
    
    var arrayData = [""]
   // var arrayCouponsData = [""]
    var arrayTable = ["","","","","","","",""]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad(){
        super.viewDidLoad()
         
        self.mainView.OfferCollectionView.delegate = self
        self.mainView.OfferCollectionView.dataSource = self
        //self.mainView.FoodItemCollectionView.delegate = self
       // self.mainView.FoodItemCollectionView.dataSource = self
        self.mainView.tableView.delegate = self
        self.mainView.tableView.dataSource = self
        task()
    }

    override func viewWillLayoutSubviews() {
        self.mainView.Theight?.constant = self.mainView.tableView.contentSize.height
       
    }
    private func reloadData() {
        self.mainView.tableView.reloadData()
        self.mainView.tableView.invalidateIntrinsicContentSize()
      
        
        }
    func task() {
       
        mainView.OfferCollectionView.register(UINib(nibName: "OfferCell", bundle: nil),  forCellWithReuseIdentifier: "OfferCell")
        
        //mainView.FoodItemCollectionView.register(UINib(nibName: "EggCell", bundle: nil),  forCellWithReuseIdentifier: "EggCell")
        mainView.tableView.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "TableCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        if (collectionView == mainView.FoodItemCollectionView) {
//            return arrayCouponsData.count
//        }
            
        return arrayData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
           let cell = mainView.OfferCollectionView.dequeueReusableCell(withReuseIdentifier: "OfferCell", for: indexPath) as? OfferCell
       
        
//        if (collectionView == mainView.FoodItemCollectionView) {
//            let cell2 = mainView.FoodItemCollectionView.dequeueReusableCell(withReuseIdentifier: "EggCell", for: indexPath) as? EggCell
//            return cell2!
//        }
       
        return cell!
         
      
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainView.tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell
        return cell!
    }
    
}
