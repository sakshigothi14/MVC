//
//  ViewController.swift
//  MVC-P
//
//  Created by Sakshi on 17/08/23.
//
import Foundation
import UIKit

class ViewController: UIViewController {
var arrData = [MedCartModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = MedCartData.getAllMedData()
        // Do any additional setup after loading the view.
    }


}


extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MedCartCell", for: indexPath) as! MedCartCell
        cell.img.image = arrData[indexPath.row].img
        cell.title.text = arrData[indexPath.row].title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
}

