//
//  easyTabelVC4.swift
//  dayOne
//
//  Created by Vineeth Xavier on 10/1/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class easyTabelVC4: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    
        array = ["got_0", "got_1", "got_2", "got_3"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "easyCellIdentifier", for: indexPath) as? easyTableViewCell
        
        cell?.easyImage.image = UIImage(named: array[indexPath.row])
        
        return cell!
    }

}
