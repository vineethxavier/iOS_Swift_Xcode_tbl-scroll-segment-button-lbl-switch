//
//  ViewController3Scroll.swift
//  dayOne
//
//  Created by Vineeth Xavier on 9/30/17.
//  Copyright © 2017 Vineeth Xavier. All rights reserved.
//

import UIKit

class ViewController3Scroll: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBAction func HelloButton(_ sender: UIButton) {
        topLabel.text = "changed to hello"
    }
    
    @IBAction func WorldButton(_ sender: UIButton) {
        bottomLabel.text = "changed to world!!"
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
