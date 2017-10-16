//
//  ViewController2.swift
//  dayOne
//
//  Created by Vineeth Xavier on 9/29/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

    @IBAction func segCtrl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        //case 0: imageView.image = UIImage(named: "adImg")
        case 0: imageView.image = #imageLiteral(resourceName: "adImg")
        case 1: imageView.image = UIImage(named: "uniImg")
        default:
            break
        }
    }

    

}
