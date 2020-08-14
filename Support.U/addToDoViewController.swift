//
//  addToDoViewController.swift
//  Support.U
//
//  Created by Laura Pena on 8/12/20.
//  Copyright © 2020 Sonal Bhatia. All rights reserved.
//  This entire project belongs to Team Nomads of the Kode With Klossy Wave 5 Camp in 2020.
//  Team Nomads: Sonal Bhatia, Mia Bryan, Laura Pena, & Georgia Rood

import UIKit
import CoreData

class addToDoViewController: UIViewController {
    var previousToDoTVC = ToDoTableViewController()
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    @IBOutlet weak var switchInput: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        //let newToDo = ToDoClass()
        
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        
        let newToDo = ToDoCD(context: dataFromCoreData)
        newToDo.descriptionInCD = descriptionInput.text
        newToDo.importantInCD = switchInput.isOn
        accessToCoreData.saveContext()
        
        navigationController?.popViewController(animated: true)
        
        //if let checkForInput = descriptionInput.text{
            //newToDo.description = checkForInput
            //newToDo.important = switchInput.isOn
       // }
        //previousToDoTVC.listOfToDo.append(newToDo)
       // previousToDoTVC.tableView.reloadData()
       // navigationController?.popViewController(animated: true)
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
