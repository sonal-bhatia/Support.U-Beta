//
//  userHomeScreenViewController.swift
//  Support.U
//
//  Created by Sonal Bhatia on 8/12/20.
//  Copyright © 2020 Sonal Bhatia. All rights reserved.
//  This entire project belongs to Team Nomads of the Kode With Klossy Wave 5 Camp in 2020.
//  Team Nomads: Sonal Bhatia, Mia Bryan, Laura Pena, & Georgia Rood

import UIKit

class userHomeScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
               
    @IBAction func calendarButton(_ sender: UIButton) {
        var vc = CalendarViewController()

        present( vc, animated: true, completion: nil)

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
