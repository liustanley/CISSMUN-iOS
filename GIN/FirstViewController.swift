//
//  FirstViewController.swift
//  GIN
//
//  Created by Stanley Liu on 5/24/17.
//  Copyright © 2017 Stanley Liu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}

