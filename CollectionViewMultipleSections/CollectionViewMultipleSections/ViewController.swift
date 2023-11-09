//
//  ViewController.swift
//  CollectionViewMultipleSections
//
//  Created by mac on 11/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let section1Data = ["Item 1A", "Item 1B", "Item 1C"]
    let section2Data = ["Item 2A", "Item 2B", "Item 2C", "Item 2D","Item 2A", "Item 2B", "Item 2C", "Item 2D","Item 2A", "Item 2B", "Item 2C", "Item 2D","Item 2A", "Item 2B", "Item 2C", "Item 2D"]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section  == 1 {
            return section1Data.count
        } else {
            return section2Data.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath) as! MyCollectionViewCell
        if indexPath.section == 1 {
                    cell.myLbl?.text = section1Data[indexPath.row]
               } else {
                    cell.myLbl?.text = section2Data[indexPath.row]
                }
        return cell
                
            }
    
    }
  
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
        
}
    
    
    
    


//import UIKit

//class ViewController: UICollectionViewController {
//
//    let section1Data = ["Item 1A", "Item 1B", "Item 1C"]
//    let section2Data = ["Item 2A", "Item 2B", "Item 2C", "Item 2D"]
//
//    override func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        if section == 0 {
//            return section1Data.count
//        } else {
//            return section2Data.count
//        }
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath)
//
//        if indexPath.section == 0 {
//            cell.textLabel?.text = section1Data[indexPath.row]
//        } else {
//            cell.textLabel?.text = section2Data[indexPath.row]
//        }
//
//        return cell
//    }
//
//    // Optional: Implement supplementary views if needed.
//}


