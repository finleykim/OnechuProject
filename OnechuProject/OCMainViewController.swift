//
//  ViewController.swift
//  OnechuProject
//
//  Created by Finley on 2022/09/17.
//

import UIKit

class OCMainViewController: UIViewController {
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        registerNib()
        
    }
    
    private func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        firstCollectionView.collectionViewLayout = layout
        firstCollectionView.tag = 1
        
        secondCollectionView.dataSource = self
        secondCollectionView.delegate = self
        secondCollectionView.collectionViewLayout = layout
        secondCollectionView.tag = 2
        
    }
    
    private func registerNib(){
        let firstNibName = UINib(nibName: "FirstCollectionViewCell", bundle: nil)
        firstCollectionView.register(firstNibName, forCellWithReuseIdentifier: "FirstCollectionViewCell")
        let secondNibName = UINib(nibName: "SecondCollectionViewCell", bundle: nil)
        firstCollectionView.register(secondNibName, forCellWithReuseIdentifier: "SecondCollectionViewCell")
    }
}

extension OCMainViewController : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 1 : return 10
        case 2 : return 10
        default : return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstCollectionViewCell", for: indexPath)
            return cell
        case 2:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionViewCell", for: indexPath)
            return cell
        default : return UICollectionViewCell()
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView.tag {
        case 1:
            return CGSize(width: (UIScreen.main.bounds.width / 2) - 20, height: (UIScreen.main.bounds.height / 4))
        case 2:
            return CGSize(width: (UIScreen.main.bounds.width / 2) - 20, height: 219)
        default:
            return CGSize(width: (UIScreen.main.bounds.width / 2) - 20, height: 219)
        }
    }
}

