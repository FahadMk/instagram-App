//
//  MessageVC.swift
//  instagramApp
//
//  Created by datamatics on 05/02/20.
//  Copyright © 2020 datamatics. All rights reserved.
//

import UIKit




class MessageVC: UIViewController {
    var data = [wallpaperData]()

    @IBOutlet weak var chatTV: UITableView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [wallpaperData.init(image: UIImage(named: "portal.png"), about: "super car which is in red color with beautiful and color full background "),wallpaperData.init(image: UIImage(named: "IMG_6758.JPG"), about: "lamborgini with red color as background showing it exotic and look and feel. "),wallpaperData.init(image: UIImage(named: "IMG_6472.JPG"), about: "A concept car by tesla showing the difference made with technology and how much usefulness is there. "),wallpaperData.init(image: UIImage(named: "space.JPG"), about: "space man reflection of himself in space, earth behind him. and that how it goes blah and blah and more .")]
        
    }
    


}
extension MessageVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatCell
        let message = data[indexPath .row].about
        let Images = data[indexPath .row].image
        cell.userImage.layer.cornerRadius = cell.userImage.frame.size.width / 2 
        cell.userImage.clipsToBounds = true
        cell.userImage.image = Images
    
        cell.userMessageLabel.text = message
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
