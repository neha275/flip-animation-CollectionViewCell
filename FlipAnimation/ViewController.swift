//
//  ViewController.swift
//  FlipAnimation
//
//  Created by Neha Gupta on 21/02/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView:UICollectionView!
    
    
    var cardCollectionCellIndentify:String = "CardsCollectionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellnib = UINib(nibName: cardCollectionCellIndentify, bundle: nil)
        collectionView.register(cellnib, forCellWithReuseIdentifier: cardCollectionCellIndentify)
    }

}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cardCollectionCellIndentify, for: indexPath) as! CardsCollectionCell
        cell.imgFront.image = #imageLiteral(resourceName: "frontimage")
        cell.imgBack.image = #imageLiteral(resourceName: "backimage")
        cell.isFrontView = false
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let insets:CGFloat = 5
        return UIEdgeInsets(top: insets, left: insets, bottom: insets, right: insets)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = (UIScreen.main.bounds.width / 2) - 11
        return CGSize.init(width: screenWidth, height: 180)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CardsCollectionCell
        cell.isFrontView = !cell.isFrontView
        if cell.isFrontView {
            UIView.transition(from: cell.uvFrontView, to: cell.uvBackView, duration: 0.5, options: [.transitionFlipFromLeft,.showHideTransitionViews], completion: nil)
        }else {
            UIView.transition(from: cell.uvBackView, to: cell.uvFrontView, duration: 0.5, options: [.transitionFlipFromRight,.showHideTransitionViews], completion: nil)
        }
        
        
        
    }
}


