//
//  CardsCollectionCell.swift
//  FlipAnimation
//
//  Created by Neha Gupta on 21/02/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class CardsCollectionCell: UICollectionViewCell {

    @IBOutlet weak var uvFrontView:UIView!
    @IBOutlet weak var uvBackView:UIView!
    @IBOutlet weak var imgFront:UIImageView!
    @IBOutlet weak var imgBack:UIImageView!
    
    var isFrontView:Bool!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
