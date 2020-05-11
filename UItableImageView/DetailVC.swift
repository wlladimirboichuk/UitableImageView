//
//  DetailVC.swift
//  UItableImageView
//
//  Created by Volodymyr Boichuk on 12.05.2020.
//  Copyright © 2020 Volodymyr Boichuk. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var trackTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Передаем изображение и надпись
        image.image = UIImage(named: trackTitle)
        titleLabel.text = trackTitle
        titleLabel.numberOfLines = 0

    }
    

}
