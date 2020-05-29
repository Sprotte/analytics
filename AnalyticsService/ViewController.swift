//
//  ViewController.swift
//  AnalyticsService
//
//  Created by Paul Sprotte on 05.05.20.
//  Copyright © 2020 Paul Sprotte. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionClick(_ sender: Any) {
        index+=1
        switch index {
        case 1:
            AnalyticsManager.instance.report(event: .click)
        case 10:
            AnalyticsManager.instance.report(event: .reachedTen)
        default:
             AnalyticsManager.instance.report(event: .clicked(index: index))
        }
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
