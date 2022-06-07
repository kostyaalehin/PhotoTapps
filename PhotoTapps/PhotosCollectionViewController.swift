//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Константин Алехин on 07.06.2022.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    let itemsForRow: CGFloat = 2
    let sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)


    override func viewDidLoad() {
        super.viewDidLoad()

//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.itemSize = CGSize(width: 70, height: 30)
//        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
//        layout.minimumLineSpacing = 1
//        layout.minimumInteritemSpacing = 1
//        layout.scrollDirection = .vertical
//
//        layout.collectionView?.showsVerticalScrollIndicator = false

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 15
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCollectionViewCell

        cell.backgroundColor = .black
    
        // Configure the cell
    
        return cell
    }

}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let peddingWigth = sectionInset.left * (itemsForRow + 1)
        let availableWidth = collectionView.frame.width - peddingWigth
        let widhtPerItem = availableWidth / itemsForRow
        return CGSize(width: widhtPerItem, height: widhtPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInset
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInset.left
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInset.left
    }
}
