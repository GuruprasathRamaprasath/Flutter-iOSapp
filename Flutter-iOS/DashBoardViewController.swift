//
//  DashBoardViewController.swift
//  Flutter-iOS
//
//  Created by Guruprasath on 09/01/19.
//  Copyright © 2019 Guruprasath. All rights reserved.
//

import UIKit
import Flutter

class DashBoardViewController: FlutterViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Dashboard"
        self.setInitialRoute("/dashboardView")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
