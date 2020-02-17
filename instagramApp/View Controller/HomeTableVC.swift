//
//  HomeTableVC.swift
//  instagramApp
//
//  Created by datamatics on 06/02/20.
//  Copyright © 2020 datamatics. All rights reserved.
//

import UIKit

class HomeTableVC: UITableViewController {
    var data  = [wallpaperData]()
    @IBOutlet weak var HomeTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [wallpaperData.init(image: UIImage(named: "portal.png"), about: "super car which is in red color with beautiful and color full background "),wallpaperData.init(image: UIImage(named: "IMG_6758.JPG"), about: "lamborgini with red color as background showing it exotic and look and feel. "),wallpaperData.init(image: UIImage(named: "IMG_6472.JPG"), about: "A concept car by tesla showing the difference made with technology and how much usefulness is there. "),wallpaperData.init(image: UIImage(named: "space.JPG"), about: "space man reflection of himself in space, earth behind him. and that how it goes blah and blah and more .")]
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! HomeTableCell
        cell.homeImageView.image = data[indexPath.row].image
        cell.homeImageDescription.text = data[indexPath.row].about
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


}
