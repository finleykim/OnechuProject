//
//  SecondCollectionViewCell.swift
//  OnechuProject
//
//  Created by Finley on 2022/09/17.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var whiteBack: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var point: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(named: "OC-WhiteGrey")?.cgColor
    }

}
