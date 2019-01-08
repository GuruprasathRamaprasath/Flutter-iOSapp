//
//  ViewController.swift
//  Flutter-iOS
//
//  Created by Guruprasath on 08/01/19.
//  Copyright © 2019 Guruprasath. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapHere(_ sender: Any) {
        let flutterViewController = FlutterViewController()
        flutterViewController.setInitialRoute("/flutterView")
        self.navigationController?.pushViewController(flutterViewController, animated: true)
    }
    
}

