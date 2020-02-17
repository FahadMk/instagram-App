//
//  HomeTableCell.swift
//  instagramApp
//
//  Created by datamatics on 06/02/20.
//  Copyright © 2020 datamatics. All rights reserved.
//

import UIKit

class HomeTableCell: UITableViewCell {

    
  
    @IBOutlet weak var homeImageDescription: UILabel!
    @IBOutlet weak var likeBtn: UIButton!
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension HomeTableCell : UIScrollViewDelegate,UICollectionViewDelegate{
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
        imageCollectionView.delegate = dataSourceDelegate
        imageCollectionView.dataSource = dataSourceDelegate
        imageCollectionView.tag = row
        imageCollectionView.reloadData()
    }
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.imageCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
            
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
            
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundIndex = round(index)
            
            offset = CGPoint(x: roundIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: scrollView.contentInset.top)
            
            targetContentOffset.pointee = offset
            
    }

}


