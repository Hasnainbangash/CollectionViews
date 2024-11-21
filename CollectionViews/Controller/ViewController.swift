//
//  ViewController.swift
//  CollectionViews
//
//  Created by Elexoft on 21/11/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var images = [
        UIImage(named: "picture2"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture4"),
        UIImage(named: "picture3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageReuseableCell")
        
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageReuseableCell", for: indexPath) as? ImageCell
        if let image = images[indexPath.row] {
            cell?.imageView.image = image
        }
        
        return cell!
    }
}
