//
//  DetailVC.swift
//  dayOne
//
//  Created by Vineeth Xavier on 10/1/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class DetailVC: VC4TableViewViewController {

    @IBOutlet weak var detailImage: UIImageView!
    var imageName: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func commonInit(_ imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
    }

}
