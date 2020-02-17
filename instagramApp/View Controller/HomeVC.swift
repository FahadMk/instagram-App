//
//  HomeVC.swift
//  instagramApp
//
//  Created by datamatics on 06/02/20.
//  Copyright © 2020 datamatics. All rights reserved.
//

import UIKit
class collectionView : UICollectionView{
    
}

class HomeVC: UIViewController {
    
    var likes = 0
    var data  = [profileUploadStruct]()
    @IBOutlet weak var HomeTV: UITableView!
    @IBOutlet weak var collectionV: collectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [profileUploadStruct.init(image: UIImage(named: "portal.png"), about: "super car which is in red color with beautiful and color full background ",likes: 0),profileUploadStruct.init(image: UIImage(named: "IMG_6758.JPG"), about: "lamborgini with red color as background showing it exotic and look and feel. ",likes: 0),profileUploadStruct.init(image: UIImage(named: "IMG_6472.JPG"), about: "A concept car by tesla showing the difference made with technology and how much usefulness is there. ",likes: 0),profileUploadStruct.init(image: UIImage(named: "space.JPG"), about: "space man reflection of himself in space, earth behind him. and that how it goes blah and blah and more .",likes: 0)]
    }

    @IBAction func likeBtnClicked(_ sender: Any) {
        let buttonPosition = (sender as AnyObject).convert(CGPoint.zero, to: self.HomeTV)
        let indexPath = self.HomeTV.indexPathForRow(at: buttonPosition)
        if self.data[(indexPath!.row)].likes == 0 {
            (sender as AnyObject).setImage(UIImage(named: "clickedHeart.png"), for: UIControl.State.normal)
            self.data[(indexPath!.row)].likes = data[(indexPath!.row)].likes! + 1
            self.HomeTV.reloadData()
        }else{
            (sender as AnyObject).setImage(UIImage(named: "icons8-heart-50.png"), for: UIControl.State.normal)
            self.data[(indexPath!.row)].likes = data[(indexPath!.row)].likes! - 1
            self.HomeTV.reloadData()
        }
    }
    
}

extension HomeVC : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableCell
//        cell.homeImageView.image = data[indexPath.row].image
        let like = data[indexPath.row].likes
        cell.homeImageDescription.text = "\(like!) likes"
        return cell
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource ,UIScrollViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCCell", for: indexPath) as! HomeImageCell
        cell.HomeImageCV.image = data[indexPath.row].image
        return cell
    }

    
}
