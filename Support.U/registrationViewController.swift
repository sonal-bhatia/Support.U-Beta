//
//  registrationViewController.swift
//  Support.U
//
//  Created by Laura Pena on 8/11/20.
//  Copyright © 2020 Sonal Bhatia. All rights reserved.
//  This entire project belongs to Team Nomads of the Kode With Klossy Wave 5 Camp in 2020.
//  Team Nomads: Sonal Bhatia, Mia Bryan, Laura Pena, & Georgia Rood

import UIKit

class registrationViewController: UIViewController {

    @IBOutlet weak var registrationName: UITextField!
    
    @IBOutlet weak var registrationEmail: UITextField!
    
    @IBOutlet weak var registrationSchool: UITextField!
    
    @IBOutlet weak var registrationGrade: UITextField!
    
    @IBOutlet weak var registrationClass: UITextField!
    
    @IBOutlet weak var registrationPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func completeRegistration(_ sender: UIButton) {
        
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
