//
//  CompletedToDoViewController.swift
//  Support.U
//
//  Created by Sonal Bhatia on 8/12/20.
//  Copyright © 2020 Sonal Bhatia. All rights reserved.
//  This entire project belongs to Team Nomads of the Kode With Klossy Wave 5 Camp in 2020.
//  Team Nomads: Sonal Bhatia, Mia Bryan, Laura Pena, & Georgia Rood

import UIKit

class CompletedToDoViewController: UIViewController {
   
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?
    
    @IBOutlet weak var toDoDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDoDisplay.text = selectedToDo?.descriptionInCD
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
        guard let accessToCoreData = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let dataFromCoreData = accessToCoreData.persistentContainer.viewContext
        if let toDo2Delete = selectedToDo {
            dataFromCoreData.delete(toDo2Delete)
            navigationController?.popViewController(animated: true)
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
